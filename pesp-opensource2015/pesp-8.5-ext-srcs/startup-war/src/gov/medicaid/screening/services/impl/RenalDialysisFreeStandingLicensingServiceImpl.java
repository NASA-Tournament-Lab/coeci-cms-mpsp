/*
 * Copyright (C) 2013 TopCoder Inc., All Rights Reserved.
 */
package gov.medicaid.screening.services.impl;

import gov.medicaid.entities.ProviderProfile;
import gov.medicaid.entities.RenalDialysisFreeStandingSearchCriteria;
import gov.medicaid.entities.SearchResult;
import gov.medicaid.screening.dao.RenalDialysisFreeStandingLicensingDAO;
import gov.medicaid.screening.services.ConfigurationException;
import gov.medicaid.screening.services.RenalDialysisFreeStandingLicensingService;
import gov.medicaid.screening.services.ServiceException;

import javax.annotation.PostConstruct;
import javax.jws.WebMethod;
import javax.jws.WebService;
import javax.naming.InitialContext;
import javax.naming.NamingException;

/**
 * This class provides the webservice implementation of the RenalDialysisFreeStandingLicensingService interface.
 * 
 * @author cyberjag
 * @version 1.0
 */
@WebService
public class RenalDialysisFreeStandingLicensingServiceImpl extends AbstractBaseService implements
        RenalDialysisFreeStandingLicensingService {
    /**
     * Represent the name of this class
     */
    private static final String CLASS_NAME = RenalDialysisFreeStandingLicensingServiceImpl.class.getName();

    /**
     * Represents the DAO that will back this service. It may have any value. It is fully mutable, but not expected to
     * change after dependency injection.
     */
    private RenalDialysisFreeStandingLicensingDAO renalDialysisFreeStandingLicensingDAO;

    /**
     * Empty constructor
     */
    public RenalDialysisFreeStandingLicensingServiceImpl() {
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
        try {
            InitialContext ctx = new InitialContext();
            renalDialysisFreeStandingLicensingDAO = (RenalDialysisFreeStandingLicensingDAO) ctx
                    .lookup("cms-external-sources/RenalDialysisFreeStandingLicensingDAOBean/local");
        } catch (NamingException e) {
            throw new ConfigurationException("Failed to create data access", e);
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
    @WebMethod
    public SearchResult<ProviderProfile> search(RenalDialysisFreeStandingSearchCriteria criteria)
            throws ServiceException {
        String signature = CLASS_NAME + "#search(RenalDialysisFreeStandingSearchCriteria criteria)";
        LogUtility.traceEntry(getLog(), signature, new String[] { "criteria" }, new Object[] { criteria });
        try {
            SearchResult<ProviderProfile> results = renalDialysisFreeStandingLicensingDAO.search(criteria);
            return LogUtility.traceExit(getLog(), signature, results);
        } catch (IllegalArgumentException e) {
            LogUtility.traceError(getLog(), signature, e);
            throw e;
        } catch (ServiceException e) {
            LogUtility.traceError(getLog(), signature, e);
            throw e;
        }
    }
}
