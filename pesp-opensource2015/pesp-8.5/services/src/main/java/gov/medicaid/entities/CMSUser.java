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
package gov.medicaid.entities;

import gov.medicaid.binders.BinderUtils;

import java.io.Serializable;

/**
 * Represents a user entity.
 *
 * @author TCSASSEMBLER
 * @version 1.0
 */
public class CMSUser implements Serializable {

    /**
     * The user identifier (generated).
     */
    private String userId;

    /**
     * The user name.
     */
    private String username;

    /**
     * The first name.
     */
    private String firstName;

    /**
     * The last name.
     */
    private String lastName;

    /**
     * The middle name.
     */
    private String middleName;

    /**
     * Phone number.
     */
    private String phoneNumber;

    /**
     * Transient fields for display.
     */
    private String businessPhonePart1;

    /**
     * Transient fields for display.
     */
    private String businessPhonePart2;

    /**
     * Transient fields for display.
     */
    private String businessPhonePart3;

    /**
     * Transient fields for display.
     */
    private String businessPhoneExt;

    /**
     * Email address.
     */
    private String email;

    /**
     * User status.
     */
    private UserStatus status;

    /**
     * The user role.
     */
    private Role role;
    
    /**
     * Employer or Self.
     * If employer, it should have a proxyForUserId
     */
    private RoleView externalRoleView;
    
    /**
     * The NPI that is being proxied, will only have a value if
     */
    private String proxyForNPI;
    
    /**
     * The external account information.
     */
    private ExternalAccountLink externalAccountLink;
    
    /**
     * Empty constructor.
     */
    public CMSUser() {
    }

    /**
     * Gets the value of the field <code>username</code>.
     *
     * @return the username
     */
    public String getUsername() {
        return username;
    }

    /**
     * Sets the value of the field <code>username</code>.
     *
     * @param username the username to set
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * Gets the value of the field <code>firstName</code>.
     *
     * @return the firstName
     */
    public String getFirstName() {
        return firstName;
    }

    /**
     * Sets the value of the field <code>firstName</code>.
     *
     * @param firstName the firstName to set
     */
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    /**
     * Gets the value of the field <code>lastName</code>.
     *
     * @return the lastName
     */
    public String getLastName() {
        return lastName;
    }

    /**
     * Sets the value of the field <code>lastName</code>.
     *
     * @param lastName the lastName to set
     */
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    /**
     * Gets the value of the field <code>middleName</code>.
     *
     * @return the middleName
     */
    public String getMiddleName() {
        return middleName;
    }

    /**
     * Sets the value of the field <code>middleName</code>.
     *
     * @param middleName the middleName to set
     */
    public void setMiddleName(String middleName) {
        this.middleName = middleName;
    }

    /**
     * Gets the value of the field <code>phoneNumber</code>.
     *
     * @return the phoneNumber
     */
    public String getPhoneNumber() {
        return phoneNumber;
    }

    /**
     * Sets the value of the field <code>phoneNumber</code>.
     *
     * @param phoneNumber the phoneNumber to set
     */
    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
        String[] splitPhone = BinderUtils.splitPhone(phoneNumber);
        businessPhonePart1 = splitPhone[0];
        businessPhonePart2 = splitPhone[1];
        businessPhonePart3 = splitPhone[2];
        businessPhoneExt = splitPhone[3];
    }

    /**
     * Gets the value of the field <code>role</code>.
     *
     * @return the role
     */
    public Role getRole() {
        return role;
    }

    /**
     * Sets the value of the field <code>role</code>.
     *
     * @param role the role to set
     */
    public void setRole(Role role) {
        this.role = role;
    }

    /**
     * Gets the value of the field <code>email</code>.
     *
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * Sets the value of the field <code>email</code>.
     *
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * Gets the value of the field <code>status</code>.
     *
     * @return the status
     */
    public UserStatus getStatus() {
        return status;
    }

    /**
     * Sets the value of the field <code>status</code>.
     *
     * @param status the status to set
     */
    public void setStatus(UserStatus status) {
        this.status = status;
    }

    /**
     * Gets the value of the field <code>userId</code>.
     *
     * @return the userId
     */
    public String getUserId() {
        return userId;
    }

    /**
     * Sets the value of the field <code>userId</code>.
     *
     * @param userId the userId to set
     */
    public void setUserId(String userId) {
        this.userId = userId;
    }

    /**
     * Gets the value of the field <code>businessPhonePart1</code>.
     *
     * @return the businessPhonePart1
     */
    public String getBusinessPhonePart1() {
        return businessPhonePart1;
    }

    /**
     * Sets the value of the field <code>businessPhonePart1</code>.
     *
     * @param businessPhonePart1 the businessPhonePart1 to set
     */
    public void setBusinessPhonePart1(String businessPhonePart1) {
        this.businessPhonePart1 = businessPhonePart1;
    }

    /**
     * Gets the value of the field <code>businessPhonePart2</code>.
     *
     * @return the businessPhonePart2
     */
    public String getBusinessPhonePart2() {
        return businessPhonePart2;
    }

    /**
     * Sets the value of the field <code>businessPhonePart2</code>.
     *
     * @param businessPhonePart2 the businessPhonePart2 to set
     */
    public void setBusinessPhonePart2(String businessPhonePart2) {
        this.businessPhonePart2 = businessPhonePart2;
    }

    /**
     * Gets the value of the field <code>businessPhonePart3</code>.
     *
     * @return the businessPhonePart3
     */
    public String getBusinessPhonePart3() {
        return businessPhonePart3;
    }

    /**
     * Sets the value of the field <code>businessPhonePart3</code>.
     *
     * @param businessPhonePart3 the businessPhonePart3 to set
     */
    public void setBusinessPhonePart3(String businessPhonePart3) {
        this.businessPhonePart3 = businessPhonePart3;
    }

    /**
     * Gets the value of the field <code>businessPhoneExt</code>.
     *
     * @return the businessPhoneExt
     */
    public String getBusinessPhoneExt() {
        return businessPhoneExt;
    }

    /**
     * Sets the value of the field <code>businessPhoneExt</code>.
     *
     * @param businessPhoneExt the businessPhoneExt to set
     */
    public void setBusinessPhoneExt(String businessPhoneExt) {
        this.businessPhoneExt = businessPhoneExt;
    }

    /**
     * Retains the transient phone fields.
     */
    public void concatPhone() {
        this.phoneNumber = BinderUtils.concatPhone(businessPhonePart1, businessPhonePart2, businessPhonePart3,
            businessPhoneExt);
    }

	/**
	 * Gets the value of the field <code>externalRoleView</code>.
	 * @return the externalRoleView
	 */
	public RoleView getExternalRoleView() {
		return externalRoleView;
	}

	/**
	 * Sets the value of the field <code>externalRoleView</code>.
	 * @param externalRoleView the externalRoleView to set
	 */
	public void setExternalRoleView(RoleView externalRoleView) {
		this.externalRoleView = externalRoleView;
	}

	/**
	 * Gets the value of the field <code>proxyForNPI</code>.
	 * @return the proxyForNPI
	 */
	public String getProxyForNPI() {
		return proxyForNPI;
	}

	/**
	 * Sets the value of the field <code>proxyForNPI</code>.
	 * @param proxyForNPI the proxyForNPI to set
	 */
	public void setProxyForNPI(String proxyForNPI) {
		this.proxyForNPI = proxyForNPI;
	}

	/**
	 * Gets the value of the field <code>externalAccountLink</code>.
	 * @return the externalAccountLink
	 */
	public ExternalAccountLink getExternalAccountLink() {
		return externalAccountLink;
	}

	/**
	 * Sets the value of the field <code>externalAccountLink</code>.
	 * @param externalAccountLink the externalAccountLink to set
	 */
	public void setExternalAccountLink(ExternalAccountLink externalAccountLink) {
		this.externalAccountLink = externalAccountLink;
	}
}
