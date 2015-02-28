/*
 * Copyright (C) 2012 TopCoder Inc., All Rights Reserved.
 */
package gov.medicaid.screening.services.impl;

import gov.medicaid.entities.ProviderProfile;
import gov.medicaid.entities.PublicHealthNursingOrganizationSearchCriteria;
import gov.medicaid.entities.SearchResult;
import gov.medicaid.screening.dao.PublicHealthNursingOrganizationLicensingDAO;
import gov.medicaid.screening.services.ConfigurationException;
import gov.medicaid.screening.services.PublicHealthNursingOrganizationLicensingService;
import gov.medicaid.screening.services.ServiceException;

import javax.annotation.PostConstruct;
import javax.ejb.EJB;
import javax.ejb.Remote;
import javax.ejb.Stateless;
import javax.ejb.TransactionAttribute;
import javax.ejb.TransactionAttributeType;
import javax.ejb.TransactionManagement;
import javax.ejb.TransactionManagementType;

/**
 * This class provides an EJB implementation of the PublicHealthNursingOrganizationLicensingService interface. It is a
 * stateless, remote web service bean.
 * 
 * <p>
 * <strong>Thread Safety:</strong> This bean is mutable and not thread-safe as it deals with non-thread-safe entities.
 * However, in the context of being used in a container, it is thread-safe.
 * </p>
 * 
 * @author argolite, TCSASSEMBLER
 * @version 1.0
 * @since Organizational Provider Screening External Datasources Services 1
 */
@Stateless
@Remote(PublicHealthNursingOrganizationLicensingService.class)
@TransactionManagement(TransactionManagementType.CONTAINER)
public class PublicHealthNursingOrganizationLicensingServiceBean extends BaseService implements
        PublicHealthNursingOrganizationLicensingService {
    /**
     * Represent the name of this class
     */
    private static final String CLASS_NAME = PublicHealthNursingOrganizationLicensingServiceBean.class.getName();

    /**
     * Represents the DAO that will back this service. It may have any value. It is fully mutable, but not expected to
     * change after dependency injection.
     */
    @EJB
    private PublicHealthNursingOrganizationLicensingDAO publicHealthNursingOrganizationLicensingDAO;

    /**
     * Empty constructor
     */
    public PublicHealthNursingOrganizationLicensingServiceBean() {
    }

    /**
     * Checks if the container properly initialized the injected fields.
     * 
     * @throws ConfigurationException
     *             if any injected field is null
     */
    @PostConstruct
    protected void init() {
        super.init();
        if (publicHealthNursingOrganizationLicensingDAO == null) {
            throw new ConfigurationException("The publicHealthNursingOrganizationLicensingDAO must be configured.");
        }
    }

    /**
     * This method gets the applicable providers that meet the search criteria. If none available, the search result
     * will be empty.
     * 
     * @param criteria
     *            the search criteria
     * @return the search result with the matched providers
     * @throws IllegalArgumentException
     *             if the criteria is null
     * @throws IllegalArgumentException
     *             if criteria.pageNumber < 0
     * @throws IllegalArgumentException
     *             - if criteria.pageSize < 1 unless criteria.pageNumber <= 0
     * @throws ServiceException
     *             for any other exceptions encountered
     */
    @TransactionAttribute(TransactionAttributeType.REQUIRED)
    public SearchResult<ProviderProfile> search(PublicHealthNursingOrganizationSearchCriteria criteria)
            throws ServiceException {
        String signature = CLASS_NAME + "#search(PublicHealthNursingOrganizationSearchCriteria criteria)";
        LogUtil.traceEntry(getLog(), signature, new String[] { "criteria" }, new Object[] { criteria });
        try {
            SearchResult<ProviderProfile> results = publicHealthNursingOrganizationLicensingDAO.search(criteria);
            return LogUtil.traceExit(getLog(), signature, results);
        } catch (IllegalArgumentException e) {
            LogUtil.traceError(getLog(), signature, e);
            throw e;
        } catch (ServiceException e) {
            LogUtil.traceError(getLog(), signature, e);
            throw e;
        }
    }
}
