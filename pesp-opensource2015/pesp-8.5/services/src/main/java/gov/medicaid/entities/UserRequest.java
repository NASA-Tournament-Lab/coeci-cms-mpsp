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

import java.util.Date;
import java.util.List;

/**
 * Projection results from search of tickets.
 *
 * @author TCSASSEMBLER
 * @version 1.0
 */
public class UserRequest {

    /**
     * Ticket id.
     */
    private long ticketId;

    /**
     * Property used for sorting risk level.
     */
    private Integer riskLevelSortProperty;

    /**
     * NPI.
     */
    private String npi;

    /**
     * Create date.
     */
    private Date createDate;

    /**
     * Submission date.
     */
    private Date submissionDate;

    /**
     * Request type.
     */
    private String requestType;

    /**
     * Ticket status.
     */
    private String status;

    /**
     * Ticket status change date.
     */
    private Date statusDate;

    /**
     * Profile risk level.
     */
    private String riskLevel;

    /**
     * Provider type.
     */
    private String providerType;

    /**
     * Provider name.
     */
    private String providerName;

    /**
     * Notes.
     */
    private List<Note> notes;

    /**
     * The process instance.
     */
    private long processInstanceId;
    
    /**
     * Approved profile id.
     */
    private long profileReferenceId;

    /**
     * Constructor using the fields.
     *
     * @param ticketId assigned to the field with the same name
     * @param npi assigned to the field with the same name
     * @param submissionDate assigned to the field with the same name
     * @param requestType assigned to the field with the same name
     * @param status assigned to the field with the same name
     * @param statusDate assigned to the field with the same name
     * @param riskLevel assigned to the field with the same name
     * @param providerType assigned to the field with the same name
     * @param providerName assigned to the field with the same name
     * @param createDate assigned to the field with the same name
     * @param riskLevelSortProperty assigned to the field with the same name
     * @param processInstanceId assigned to the field with the same name
     * @param profileReferenceId assigned to the field with the same name
     */
    public UserRequest(long ticketId, String npi, Date submissionDate, String requestType, String status,
        Date statusDate, String riskLevel, String providerType, String providerName, Date createDate,
        Integer riskLevelSortProperty, long processInstanceId, long profileReferenceId) {
        this.ticketId = ticketId;
        this.npi = npi;
        this.submissionDate = submissionDate;
        this.requestType = requestType;
        this.status = status;
        this.statusDate = statusDate;
        this.riskLevel = riskLevel;
        this.providerType = providerType;
        this.providerName = providerName;
        this.createDate = createDate;
        this.riskLevelSortProperty = riskLevelSortProperty;
        this.processInstanceId = processInstanceId;
        this.profileReferenceId = profileReferenceId;
    }

    /**
     * Gets the value of the field <code>ticketId</code>.
     *
     * @return the ticketId
     */
    public long getTicketId() {
        return ticketId;
    }

    /**
     * Gets the value of the field <code>npi</code>.
     *
     * @return the npi
     */
    public String getNpi() {
        return npi;
    }

    /**
     * Gets the value of the field <code>submissionDate</code>.
     *
     * @return the submissionDate
     */
    public Date getSubmissionDate() {
        return submissionDate;
    }

    /**
     * Gets the value of the field <code>requestType</code>.
     *
     * @return the requestType
     */
    public String getRequestType() {
        return requestType;
    }

    /**
     * Gets the value of the field <code>status</code>.
     *
     * @return the status
     */
    public String getStatus() {
        return status;
    }

    /**
     * Gets the value of the field <code>statusDate</code>.
     *
     * @return the statusDate
     */
    public Date getStatusDate() {
        return statusDate;
    }

    /**
     * Gets the value of the field <code>riskLevel</code>.
     *
     * @return the riskLevel
     */
    public String getRiskLevel() {
        return riskLevel;
    }

    /**
     * Gets the value of the field <code>providerType</code>.
     *
     * @return the providerType
     */
    public String getProviderType() {
        return providerType;
    }

    /**
     * Gets the value of the field <code>providerName</code>.
     *
     * @return the providerName
     */
    public String getProviderName() {
        return providerName;
    }

    /**
     * Gets the value of the field <code>createDate</code>.
     * @return the createDate
     */
    public Date getCreateDate() {
        return createDate;
    }

    /**
     * Gets the value of the field <code>riskLevelSortProperty</code>.
     * @return the riskLevelSortProperty
     */
    public Integer getRiskLevelSortProperty() {
        return riskLevelSortProperty;
    }

    /**
     * Gets the value of the field <code>notes</code>.
     * @return the notes
     */
    public List<Note> getNotes() {
        return notes;
    }

    /**
     * Sets the value of the field <code>notes</code>.
     * @param notes the notes to set
     */
    public void setNotes(List<Note> notes) {
        this.notes = notes;
    }

    /**
     * Gets the value of the field <code>processInstanceId</code>.
     * @return the processInstanceId
     */
    public long getProcessInstanceId() {
        return processInstanceId;
    }

    /**
     * Gets the value of the field <code>profileReferenceId</code>.
     * @return the profileReferenceId
     */
    public long getProfileReferenceId() {
        return profileReferenceId;
    }
}
