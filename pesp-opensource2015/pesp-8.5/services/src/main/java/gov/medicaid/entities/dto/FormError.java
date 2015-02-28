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
package gov.medicaid.entities.dto;

/**
 * Holder for validation errors.
 *
 * @author TCSASSEMBLER
 * @version 1.0
 */
public class FormError {

    /**
     * The field with the error.
     */
    private String fieldId;

    /**
     * The error message.
     */
    private String message;

    /**
     * Empty constructor.
     */
    public FormError() {
    }

    /**
     * Gets the value of the field <code>fieldId</code>.
     *
     * @return the fieldId
     */
    public String getFieldId() {
        return fieldId;
    }

    /**
     * Sets the value of the field <code>fieldId</code>.
     *
     * @param fieldId the fieldId to set
     */
    public void setFieldId(String fieldId) {
        this.fieldId = fieldId;
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

    /**
     * To string.
     *
     * @return string representation of this object.
     */
    public String toString() {
        return "FormError [fieldId=" + fieldId + ", message=" + message + "]";
    }
}
