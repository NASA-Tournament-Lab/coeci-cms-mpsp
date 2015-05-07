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
package gov.medicaid.services;

import gov.medicaid.entities.AgreementDocument;
import gov.medicaid.entities.AgreementDocumentSearchCriteria;
import gov.medicaid.entities.SearchResult;


/**
 * <p>
 * This represents the service API to manage agreement documents.</p>
 * <p>
 * Implementations should be effectively thread-safe.</p>
 *
 * @author argolite, TCSASSEMBLER
 * @version 1.0
 */
public interface AgreementDocumentService {
    /**
     * This method creates the agreement document and returns the new ID of the created entity.
     *
     * @param agreementDocument the agreement document to create
     *
     * @return the ID of the added agreement document
     *
     * @throws IllegalArgumentException If agreement document is null
     * @throws PortalServiceException If there are any errors during the execution of this method
     */
    public long create(AgreementDocument agreementDocument)
        throws PortalServiceException;

    /**
     * This method updates the agreement document.
     *
     * @param agreementDocument the agreement document to create
     *
     * @throws IllegalArgumentException If agreement document is null
     * @throws PortalServiceException If there are any errors during the execution of this method
     */
    public void update(AgreementDocument agreementDocument)
        throws PortalServiceException;

    /**
     * This method gets a agreement document by its ID. If not found, returns null.
     *
     * @param agreementDocumentId the ID of the agreement document to retrieve
     *
     * @return the requested agreement document
     *
     * @throws PortalServiceException If there are any errors during the execution of this method
     */
    public AgreementDocument get(long agreementDocumentId)
        throws PortalServiceException;

    /**
     * This method deletes the agreement document with the given ID.
     *
     * @param agreementDocumentId the ID of the agreement document to delete
     *
     * @throws PortalServiceException If there are any errors during the execution of this method
     */
    public void delete(long agreementDocumentId) throws PortalServiceException;

    /**
     * This method gets all the agreement documents that meet the search criteria. If none available, the
     * search result will be empty.
     *
     * @param criteria the search criteria
     *
     * @return the applicable agreement documents
     *
     * @throws IllegalArgumentException If criteria.pageNumber is less than 0
     *  or if criteria.pageSize is less than 1 unless criteria.pageNumber is less than 0
     * @throws PortalServiceException If an error occurs while performing the operation
     */
    public SearchResult<AgreementDocument> search(AgreementDocumentSearchCriteria criteria)
        throws PortalServiceException;
}
