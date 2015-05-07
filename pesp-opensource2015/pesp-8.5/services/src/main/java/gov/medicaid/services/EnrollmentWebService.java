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

import gov.medicaid.domain.model.GetLookupGroupsRequest;
import gov.medicaid.domain.model.GetLookupGroupsResponse;
import gov.medicaid.domain.model.GetProfileDetailsRequest;
import gov.medicaid.domain.model.GetProfileDetailsResponse;
import gov.medicaid.domain.model.GetTicketDetailsRequest;
import gov.medicaid.domain.model.GetTicketDetailsResponse;
import gov.medicaid.domain.model.ResubmitTicketRequest;
import gov.medicaid.domain.model.ResubmitTicketResponse;
import gov.medicaid.domain.model.SaveTicketRequest;
import gov.medicaid.domain.model.SaveTicketResponse;
import gov.medicaid.domain.model.SubmitTicketRequest;
import gov.medicaid.domain.model.SubmitTicketResponse;

/**
 * Web service facade for enrollment requests.
 * @author TCSASSEMBLER
 * @version 1.0
 */
public interface EnrollmentWebService {

    /**
     * Retrieves the lookup groups.
     *
     * @param request the service request
     * @return the service response
     * @throws PortalServiceException for any errors encountered
     */
    public GetLookupGroupsResponse getLookupGroups(GetLookupGroupsRequest request) throws PortalServiceException;

    /**
     * Retrieves the ticket details.
     *
     * @param request the service request
     * @return the service response
     * @throws PortalServiceException for any errors encountered
     */
    public GetTicketDetailsResponse getTicketDetails(GetTicketDetailsRequest request) throws PortalServiceException;

    /**
     * Saves the ticket details.
     *
     * @param request the service request
     * @return the service response
     * @throws PortalServiceException for any errors encountered
     */
    public SaveTicketResponse saveTicket(SaveTicketRequest request) throws PortalServiceException;

    /**
     * Submits the given enrollment request.
     *
     * @param request the service request
     * @return the service response
     * @throws PortalServiceException for any errors encountered
     */
    public SubmitTicketResponse submitEnrollment(SubmitTicketRequest request) throws PortalServiceException;

    /**
     * Retrieves the profile details.
     *
     * @param request the service request
     * @return the service response
     * @throws PortalServiceException for any errors encountered
     */
    public GetProfileDetailsResponse getProfile(GetProfileDetailsRequest request) throws PortalServiceException;

    /**
     * Resubmits the given enrollment request.
     *
     * @param request the service request
     * @return the service response
     * @throws PortalServiceException for any errors encountered
     */
    public ResubmitTicketResponse resubmitEnrollment(ResubmitTicketRequest serviceRequest) throws PortalServiceException;
}
