/*
 * Copyright (C) 2012 TopCoder Inc., All Rights Reserved.
 */
package gov.medicaid.screening.dao;

import gov.medicaid.entities.ExclusionType;
import gov.medicaid.entities.OIGSearchCriteria;
import gov.medicaid.entities.ProviderProfile;
import gov.medicaid.entities.SearchResult;
import gov.medicaid.screening.services.ParsingException;
import gov.medicaid.screening.services.ServiceException;

import java.util.List;

/**
 * This defines the scraping interface for looking up OIG exclusions.
 *
 * @author sampath01, j3_guile
 * @version 1.0
 */
public interface OIGDAO {

    /**
     * Searches for excluded providers.
     *
     * @param criteria the search criteria
     * @return the matched results
     * @throws ParsingException if any parsing errors are encountered
     * @throws ServiceException for any other exceptions encountered
     */
    SearchResult<ProviderProfile> search(OIGSearchCriteria criteria) throws ParsingException, ServiceException;

    /**
     * Verifies SSN if valid.
     *
     * @param entityId the entity id
     * @param ssn the ssn
     * @return true if valid, false if not
     * @throws ParsingException if any parsing errors are encountered
     * @throws ServiceException for any other exceptions encountered
     * @deprecated not updated in new site layout.
     */
    @Deprecated
    boolean verifySSN(String entityId, String ssn) throws ParsingException, ServiceException;

    /**
     * Retrieves all available exclusion types.
     *
     * @return the exclusion types.
     * @throws ParsingException if any parsing errors are encountered
     * @throws ServiceException for any other exceptions encountered
     * @deprecated not updated in new site layout.
     */
    @Deprecated
    List<ExclusionType> getExclusionTypeList() throws ParsingException, ServiceException;
}
