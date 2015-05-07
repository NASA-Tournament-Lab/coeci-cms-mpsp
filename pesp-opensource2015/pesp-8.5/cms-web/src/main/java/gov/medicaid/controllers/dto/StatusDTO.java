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
package gov.medicaid.controllers.dto;

/**
 * This class is used to return an AJAX response.
 *
 * @author TCSASSEMBLER
 * @version 1.0
 * @since Medicaid Provider Screening Portal - Service Agent Controllers
 */
public class StatusDTO {

    /**
     * True for successful execution.
     */
    private boolean success;

    /**
     * Status message.
     */
    private String message;

    /**
     * Empty constructor.
     */
    public StatusDTO() {

    }

    /**
     * Gets the value of the field <code>success</code>.
     *
     * @return the success
     */
    public boolean isSuccess() {
        return success;
    }

    /**
     * Sets the value of the field <code>success</code>.
     *
     * @param success the success to set
     */
    public void setSuccess(boolean success) {
        this.success = success;
    }

    /**
     * Gets the value of the field <code>message</code>.
     *
     * @return the message
     */
    public String getMessage() {
        return message;
    }

    /**
     * Sets the value of the field <code>message</code>.
     *
     * @param message the message to set
     */
    public void setMessage(String message) {
        this.message = message;
    }
}
