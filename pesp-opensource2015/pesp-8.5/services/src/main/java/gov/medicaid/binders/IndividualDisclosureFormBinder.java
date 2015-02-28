/*
 * Copyright 2012-2013 TopCoder, Inc.
 *
 * This code was developed under U.S. government contract NNH10CD71C. 
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * You may not use this file except in compliance with the License.
 * You may obtain a copy of the License at:
 *     http://www.apache.org/licenses/LICENSE-2.0
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package gov.medicaid.binders;

import gov.medicaid.domain.model.AcceptedAgreementsType;
import gov.medicaid.domain.model.EnrollmentType;
import gov.medicaid.domain.model.ProviderAgreementType;
import gov.medicaid.domain.model.ProviderInformationType;
import gov.medicaid.domain.model.ProviderStatementType;
import gov.medicaid.domain.model.RequestType;
import gov.medicaid.domain.model.StatusMessageType;
import gov.medicaid.domain.model.StatusMessagesType;
import gov.medicaid.entities.AcceptedAgreements;
import gov.medicaid.entities.AgreementDocument;
import gov.medicaid.entities.CMSUser;
import gov.medicaid.entities.Enrollment;
import gov.medicaid.entities.ProviderProfile;
import gov.medicaid.entities.ProviderStatement;
import gov.medicaid.entities.ProviderType;
import gov.medicaid.entities.dto.FormError;
import gov.medicaid.services.util.PDFHelper;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.lowagie.text.Document;
import com.lowagie.text.DocumentException;
import com.lowagie.text.pdf.PdfPTable;

/**
 * This binder handles the provider type selection form.
 *
 * @author TCSASSEMBLER
 * @version 1.0
 */
public class IndividualDisclosureFormBinder extends BaseFormBinder {

    /**
     * The namespace for this form.
     */
    public static final String NAMESPACE = "_08_";

    /**
     * Statement path.
     */
    private static final String STATEMENT = "/ProviderInformation/ProviderStatement/";

    /**
     * Disclosure Path.
     */
    private static final String QUESTION_1 = "/ProviderInformation/HasCriminalConviction";

    /**
     * Disclosure Path.
     */
    private static final String QUESTION_2 = "/ProviderInformation/HasCivilPenalty";

    /**
     * Disclosure Path.
     */
    private static final String QUESTION_3 = "/ProviderInformation/HasPreviousExclusion";

    /**
     * Agreement Path.
     */
    private static final String AGREEMENTS = "/ProviderInformation/AcceptedAgreements";

    /**
     * Creates a new binder.
     */
    public IndividualDisclosureFormBinder() {
        super(NAMESPACE);
    }

    /**
     * Binds the request to the model.
     * @param enrollment the model to bind to
     * @param request the request containing the form fields
     *
     * @throws BinderException if the format of the fields could not be bound properly
     */
    public List<BinderException> bindFromPage(CMSUser user, EnrollmentType enrollment, HttpServletRequest request) {
        List<BinderException> exceptions = new ArrayList<BinderException>();
        ProviderInformationType provider = XMLUtility.nsGetProvider(enrollment);
        provider.setHasCriminalConviction(param(request, "criminalConvictionInd"));
        provider.setHasCivilPenalty(param(request, "civilPenaltyInd"));
        provider.setHasPreviousExclusion(param(request, "previousExclusionInd"));
        provider.setRenewalShowBlankStatement(param(request, "renewalBlankInit"));
        ProviderStatementType statement = XMLUtility.nsGetProviderStatement(enrollment);
        statement.setName(param(request, "name"));
        statement.setTitle(param(request, "title"));
        try {
            statement.setSignDate(BinderUtils.getAsCalendar(param(request, "date")));
        } catch (BinderException e) {
            e.setAttribute(name("date"), param(request, "date"));
            exceptions.add(e);
        }

        ProviderType pt = getLookupService().findLookupByDescription(ProviderType.class, provider.getProviderType());
        List<AgreementDocument> docs = getLookupService().findRequiredDocuments(pt.getCode());

        List<ProviderAgreementType> xList = new ArrayList<ProviderAgreementType>();
        HashSet<String> agreed = new HashSet<String>();
        for (int i = 0; i < docs.size(); i++) {
            String accepted = param(request, "accepted", i);
            String documentId = param(request, "documentId", i);
            if (accepted != null) {
                agreed.add(documentId);
            }
        }

        for (AgreementDocument doc : docs) {
            String documentId = String.valueOf(doc.getId());
            if (agreed.contains(documentId)) {
                ProviderAgreementType item = new ProviderAgreementType();
                item.setAgreementDocumentId(documentId);
                item.setAcceptedDate(Calendar.getInstance());
                item.setAgreementDocumentTitle(doc.getTitle());
                item.setAgreementDocumentType(doc.getType());
                item.setAgreementDocumentVersion(String.valueOf(doc.getVersion()));
                xList.add(item);
            }
        }

        AcceptedAgreementsType acceptedAgreements = XMLUtility.nsGetAcceptedAgreements(enrollment);
        List<ProviderAgreementType> providerAgreement = acceptedAgreements.getProviderAgreement();
        synchronized (providerAgreement) {
            providerAgreement.clear();
            providerAgreement.addAll(xList);
        }
        
        return exceptions;
    }

    /**
     * Binds the model to the request attributes.
     * @param enrollment the model to bind from
     * @param mv the model and view to bind to
     * @param readOnly true if the view is read only
     */
    public void bindToPage(CMSUser user, EnrollmentType enrollment, Map<String, Object> mv, boolean readOnly) {
        attr(mv, "bound", "Y");
        ProviderInformationType provider = XMLUtility.nsGetProvider(enrollment);
        // for renewal the form should be blank
        if (enrollment.getRequestType() == RequestType.RENEWAL && provider.getRenewalShowBlankStatement() == null) {
        	attr(mv, "renewalBlankInit", "Y");
        	ProviderType pt = getLookupService().findLookupByDescription(ProviderType.class, provider.getProviderType());
            List<AgreementDocument> docs = getLookupService().findRequiredDocuments(pt.getCode());
            int i = 0;
            for (AgreementDocument doc : docs) {
                attr(mv, "documentId", i, "" + doc.getId());
                attr(mv, "documentName", i, doc.getTitle());
                attr(mv, "accepted", i, "N");
                attr(mv, "updatedVersion", i, "N");
                i++;
            }

            attr(mv, "requiredAgreementsSize", docs.size());
        } else {
	        attr(mv, "criminalConvictionInd", provider.getHasCriminalConviction());
	        attr(mv, "civilPenaltyInd", provider.getHasCivilPenalty());
	        attr(mv, "previousExclusionInd", provider.getHasPreviousExclusion());
	
	        ProviderStatementType statement = XMLUtility.nsGetProviderStatement(enrollment);
	        attr(mv, "name", statement.getName());
	        attr(mv, "title", statement.getTitle());
	        attr(mv, "date", statement.getSignDate());
	
	        AcceptedAgreementsType acceptedAgreements = provider.getAcceptedAgreements();
	
	        ProviderType pt = getLookupService().findLookupByDescription(ProviderType.class, provider.getProviderType());
	        List<AgreementDocument> docs = getLookupService().findRequiredDocuments(pt.getCode());
	        int i = 0;
	        for (AgreementDocument doc : docs) {
	            attr(mv, "documentId", i, "" + doc.getId());
	            attr(mv, "documentName", i, doc.getTitle());
	
	            boolean agreed = false;
	            boolean updatedVersion = false;
	
	            if (acceptedAgreements != null) {
	                List<ProviderAgreementType> agreements = acceptedAgreements.getProviderAgreement();
	                for (ProviderAgreementType agreement : agreements) {
	                    if (doc.getType().equals(agreement.getAgreementDocumentType())) {
	                        if (String.valueOf(doc.getVersion()).equals(agreement.getAgreementDocumentVersion())) {
	                            agreed = true;
	                        } else {
	                            updatedVersion = true;
	                        }
	                        break;
	                    }
	                }
	            }
	
	            attr(mv, "accepted", i, agreed ? "Y" : "N");
	            attr(mv, "updatedVersion", i, updatedVersion ? "Y" : "N");
	            i++;
	        }
	
	        attr(mv, "requiredAgreementsSize", docs.size());
        }
    }

    /**
     * Captures the error messages related to the form.
     * @param enrollment the enrollment that was validated
     * @param messages the messages to select from
     *
     * @return the list of errors related to the form
     */
    protected List<FormError> selectErrors(EnrollmentType enrollment, StatusMessagesType messages) {
        List<FormError> errors = new ArrayList<FormError>();

        List<StatusMessageType> ruleErrors = messages.getStatusMessage();
        List<StatusMessageType> caughtMessages = new ArrayList<StatusMessageType>();

        synchronized (ruleErrors) {
            for (StatusMessageType ruleError : ruleErrors) {
                int count = errors.size();

                String path = ruleError.getRelatedElementPath();
                if (path == null) {
                    continue;
                }

                if (path.equals(QUESTION_1)) {
                    errors.add(createError("criminalConvictionInd", ruleError.getMessage()));
                } else if (path.equals(QUESTION_2)) {
                    errors.add(createError("civilPenaltyInd", ruleError.getMessage()));
                } else if (path.equals(QUESTION_3)) {
                    errors.add(createError("previousExclusionInd", ruleError.getMessage()));
                } else if (path.equals(AGREEMENTS)) {
                    errors.add(createError("agreements", ruleError.getMessage()));
                } else if (path.equals(STATEMENT + "Name")) {
                    errors.add(createError("name", ruleError.getMessage()));
                } else if (path.equals(STATEMENT + "Title")) {
                    errors.add(createError("title", ruleError.getMessage()));
                } else if (path.equals(STATEMENT + "SignDate")) {
                    errors.add(createError("date", ruleError.getMessage()));
                }

                if (errors.size() > count) { // caught
                    caughtMessages.add(ruleError);
                }
            }

            // so it does not get processed anywhere again
            ruleErrors.removeAll(caughtMessages);
        }

        return errors.isEmpty() ? NO_ERRORS : errors;
    }

    /**
     * Binds the fields of the form to the persistence model.
     *
     * @param enrollment the front end model
     * @param ticket the persistent model
     */
    public void bindToHibernate(EnrollmentType enrollment, Enrollment ticket) {
        ProviderInformationType provider = XMLUtility.nsGetProvider(enrollment);
        ProviderProfile profile = ticket.getDetails();

        profile.setCriminalConvictionInd(provider.getHasCriminalConviction());
        profile.setCivilPenaltyInd(provider.getHasCivilPenalty());
        profile.setPreviousExclusionInd(provider.getHasPreviousExclusion());

        List<AcceptedAgreements> hList = profile.getAgreements();

        ProviderType pt = getLookupService().findLookupByDescription(ProviderType.class, provider.getProviderType());
        List<AgreementDocument> activeList = getLookupService().findRequiredDocuments(pt.getCode());
        Map<String, AgreementDocument> documentMap = mapDocumentsById(activeList);

        // Retain any previously accepted agreements that is no longer shown in the page
        List<AcceptedAgreements> mergedList = filterOnlyInactive(hList, documentMap);
        Map<String, AcceptedAgreements> agreementsMap = mapAgreementsByDocumentId(hList);

        AcceptedAgreementsType acceptedAgreements = XMLUtility.nsGetAcceptedAgreements(enrollment);
        List<ProviderAgreementType> xList = acceptedAgreements.getProviderAgreement();

        for (ProviderAgreementType xAgreement : xList) { // for every item checked by theuser
            String documentId = xAgreement.getAgreementDocumentId();
            if (agreementsMap.get(documentId) != null) {
                // already accepted, just retain
                mergedList.add(agreementsMap.get(documentId));

            } else {
                // newly accepted
                AcceptedAgreements agreement = new AcceptedAgreements();
                agreement.setAcceptedDate(new Date());
                agreement.setAgreementDocument(documentMap.get(documentId));
                mergedList.add(agreement);
            }
        }

        profile.setAgreements(mergedList);

        ProviderStatementType xStatement = XMLUtility.nsGetProviderStatement(enrollment);
        ProviderStatement hStatement = profile.getStatement();
        if (hStatement == null) {
            hStatement = new ProviderStatement();
            profile.setStatement(hStatement);
        }

        hStatement.setName(xStatement.getName());
        hStatement.setTitle(xStatement.getTitle());
        hStatement.setDate(BinderUtils.toDate(xStatement.getSignDate()));
    }

    /**
     * Maps the given list by id.
     * @param list the list to be mapped
     * @return the lookup map
     */
    private Map<String, AgreementDocument> mapDocumentsById(List<AgreementDocument> list) {
        Map<String, AgreementDocument> map = new HashMap<String, AgreementDocument>();
        for (AgreementDocument item : list) {
            map.put(String.valueOf(item.getId()), item);
        }
        return map;
    }

    /**
     * Maps the given list by id.
     * @param list the list to be mapped
     * @return the lookup map
     */
    private Map<String, AcceptedAgreements> mapAgreementsByDocumentId(List<AcceptedAgreements> list) {
        Map<String, AcceptedAgreements> map = new HashMap<String, AcceptedAgreements>();
        if (list != null) {
            for (AcceptedAgreements item : list) {
                map.put(String.valueOf(item.getAgreementDocument().getId()), item);
            }
        }
        return map;
    }

    /**
     * Filters the inactive agreements from the given list.
     * @param accepted the current agreements
     * @param documentMap the active agreements
     * @return the inactive agreements
     */
    private List<AcceptedAgreements> filterOnlyInactive(List<AcceptedAgreements> accepted,
        Map<String, AgreementDocument> documentMap) {
        List<AcceptedAgreements> inactiveList = new ArrayList<AcceptedAgreements>();
        if (accepted != null) {
            for (AcceptedAgreements agreement : accepted) {
                String documentId = String.valueOf(agreement.getAgreementDocument().getId());
                if (documentMap.get(documentId) == null) { // no longer required for this provider
                    inactiveList.add(agreement);
                }

            }
        }
        return inactiveList;
    }

    /**
     * Binds the fields of the persistence model to the front end xml.
     *
     * @param ticket the persistent model
     * @param enrollment the front end model
     */
    public void bindFromHibernate(Enrollment ticket, EnrollmentType enrollment) {
        ProviderInformationType provider = XMLUtility.nsGetProvider(enrollment);
        ProviderProfile profile = ticket.getDetails();

        provider.setHasCriminalConviction(profile.getCriminalConvictionInd());
        provider.setHasCivilPenalty(profile.getCivilPenaltyInd());
        provider.setHasPreviousExclusion(profile.getPreviousExclusionInd());

        ProviderType pt = getLookupService().findLookupByDescription(ProviderType.class, provider.getProviderType());
        List<AgreementDocument> activeList = getLookupService().findRequiredDocuments(pt.getCode());
        Map<String, AgreementDocument> documentMap = mapDocumentsById(activeList);

        AcceptedAgreementsType acceptedAgreements = XMLUtility.nsGetAcceptedAgreements(enrollment);
        ArrayList<ProviderAgreementType> xlist = new ArrayList<ProviderAgreementType>();

        List<AcceptedAgreements> hList = profile.getAgreements();
        for (AcceptedAgreements agreements : hList) {
            // bind only active items
            AgreementDocument document = agreements.getAgreementDocument();
            String documentId = String.valueOf(document.getId());
            if (documentMap.get(documentId) != null) {
                ProviderAgreementType type = new ProviderAgreementType();
                type.setAcceptedDate(BinderUtils.toCalendar(agreements.getAcceptedDate()));
                type.setAgreementDocumentId(documentId);
                type.setAgreementDocumentTitle(document.getTitle());
                type.setAgreementDocumentVersion(String.valueOf(document.getVersion()));
                type.setAgreementDocumentType(document.getType());
                xlist.add(type);
            }
        }

        acceptedAgreements.getProviderAgreement().clear();
        acceptedAgreements.getProviderAgreement().addAll(xlist);

        ProviderStatement hStatement = profile.getStatement();
        if (hStatement != null) {
            ProviderStatementType xStatement = XMLUtility.nsGetProviderStatement(enrollment);
            xStatement.setName(hStatement.getName());
            xStatement.setTitle(hStatement.getTitle());
            xStatement.setSignDate(BinderUtils.toCalendar(hStatement.getDate()));
        }
    }
    
    @Override
    public void renderPDF(EnrollmentType enrollment, Document document, Map<String, Object> model)
        throws DocumentException {
        
        // Provider Statement Section
        PdfPTable disclosureInfo = new PdfPTable(new float[] {7, 1});
        PDFHelper.setTableAsFullPage(disclosureInfo);

        String ns = NAMESPACE;

        if ("Y".equals(PDFHelper.value(model, ns, "bound"))) {
            PDFHelper.addLabelValueCell(disclosureInfo, "Have you ever been convicted of a criminal offense related to "
                + "involvement in any program underMedicare, Medicaid, Title XX, or Title XXI in "
                + "Minnesota or any other state or jurisdiction since the inception of these programs?",
                PDFHelper.formatBoolean(PDFHelper.value(model, ns, "criminalConvictionInd")));

            PDFHelper.addLabelValueCell(disclosureInfo, "Have you had civil money penalties or assessments "
                + "imposed under section 1128A of the Social Security Act?",
                PDFHelper.formatBoolean(PDFHelper.value(model, ns, "civilPenaltyInd")));

            PDFHelper.addLabelValueCell(disclosureInfo,
                "Have you ever been excluded or terminated from participation in Medicare,  Medicaid, "
                    + "Children's Health Insurance Program (CHIP), or the Title XXI services program in Minnesota "
                    + "or any other state since the inception of these programs?",
                    PDFHelper.formatBoolean(PDFHelper.value(model, ns, "previousExclusionInd")));

            disclosureInfo.setSpacingAfter(20);
            document.add(disclosureInfo);

            PdfPTable statementInfo = new PdfPTable(1);
            PDFHelper.setTableAsFullPage(statementInfo);

            PDFHelper.addCell(statementInfo,
                "I certify that the information provided on this form is accurate, complete and truthful. I will "
                    + "notify MHCP Provider Enrollment of any changes to this information. I acknowledge that any "
                    + "misrepresentations in the information submitted to MHCP, including false claims,  statements, "
                    + "documents, or concealment of a material fact, may be cause for denial or termination "
                    + "of participation as a Medicaid provider.");

            PdfPTable nameTable = new PdfPTable(new float[] {1, 1, 4});
            PDFHelper.setTableAsFullPage(nameTable);
            PDFHelper.addLabelValueCell(nameTable, "Provider Name", PDFHelper.value(model, ns, "name"));
            PDFHelper.addLabelValueCell(nameTable, "Provider Title", PDFHelper.value(model, ns, "title"));
            PDFHelper.addLabelValueCell(nameTable, "Provider Signature", "");
            PDFHelper.addLabelValueCell(nameTable, "Date", PDFHelper.value(model, ns, "date"));
            document.add(nameTable);
        }
    }
}
