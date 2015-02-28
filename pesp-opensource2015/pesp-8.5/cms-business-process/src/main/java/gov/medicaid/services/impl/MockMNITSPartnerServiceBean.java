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
package gov.medicaid.services.impl;

import gov.medicaid.entities.ProviderProfile;
import gov.medicaid.services.CMSConfigurator;
import gov.medicaid.services.PartnerSystemService;
import gov.medicaid.services.PortalServiceException;
import gov.medicaid.services.ProviderEnrollmentService;

import java.util.Collections;
import java.util.List;

import javax.ejb.EJB;
import javax.ejb.Local;
import javax.ejb.Stateless;

import com.topcoder.util.log.Level;

/**
 * Implementation of a partner service.
 * 
 * @author TCSASSEMBLER
 * @version 1.0
 */
@Stateless
@Local(PartnerSystemService.class)
public class MockMNITSPartnerServiceBean extends BaseService implements
		PartnerSystemService {

	@EJB
	private ProviderEnrollmentService enrollmentService;
	
	/**
	 * The domain that is acceptable.
	 */
	private String internalSecurityDomain;
	
	/**
	 * The token for verification.
	 */
	private String internalSecurityToken;
	
	/**
	 * Empty constructor.
	 */
	public MockMNITSPartnerServiceBean() {
		CMSConfigurator config = new CMSConfigurator();
		internalSecurityDomain = config.getInternalSecurityDomain();
		internalSecurityToken = config.getInternalSecurityToken();
	}

	/**
	 * Retrieves the profiles of users from the given link.
	 * 
	 * @param externalUserId
	 *            the external account link user id
	 * @return the list of matched profiles
	 * @throws PortalServiceException
	 *             for any errors encountered
	 */
	@SuppressWarnings("unchecked")
	public List<ProviderProfile> findProfiles(String externalUserId)
			throws PortalServiceException {
		return Collections.EMPTY_LIST;
	}

	/**
	 * Authenticates the given credentials.
	 * 
	 * 1. Confirm the domain from #4 is allowable, else show access error
	 * (domain is configurable)
	 * 
	 * 2. Confirm #3, else show access error
	 * 
	 * 3. Confirm that 1 and 2 are identical, or, that #2 works for #1, else
	 * show access error
	 * @throws PortalServiceException for any errors encountered 
	 */
	public boolean authenticate(String externalUserId, String password,
			String profileNPI, String referrer) throws PortalServiceException {
		
		if (!internalSecurityDomain.equals(referrer)) {
			getLog().log(Level.WARN, "Rejecting external login due to invalid domain: " + referrer);
			return false;
		} if (!internalSecurityToken.equals(password)) {
			getLog().log(Level.WARN, "Rejecting external login due to invalid token: " + password);
			return false;
		}

		if (!enrollmentService.existsProfile(profileNPI)) {
			getLog().log(Level.WARN, "Rejecting external login because provider NPI is not found.");
			return false;
		}

		if (!externalUserId.equals(profileNPI)) {
			if (!enrollmentService.hasGroupAffiliation(externalUserId, profileNPI)) {
				getLog().log(Level.WARN, "Rejecting external login because affiliation is not found.");
				return false;
			}
		}
		
		return true;
	}
}
