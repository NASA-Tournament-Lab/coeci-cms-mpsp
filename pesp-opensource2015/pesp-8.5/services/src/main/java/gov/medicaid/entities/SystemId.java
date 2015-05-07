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

/**
 * Represents a user status.
 *
 * @author TCSASSEMBLER
 * @version 1.0
 */
public enum SystemId {

    /**
     * CMS Online system.
     */
    CMS_ONLINE("CMSO"),

    /**
     * CMS Batch processing system.
     */
    CMS_BATCH("CMSB"),

    /**
     * CMS External sources system.
     */
    CMS_EXT_SRC("CMSX"),

    /**
     * MN ITS system.
     */
    MN_ITS("MNIT");

    /**
     * The value for the system.
     */
    private final String value;

    /**
     * Creates a new instance with the given value.
     * @param value the value to be assigned
     */
    private SystemId(String value) {
        this.value = value;
    }

    /**
     * Returns the value of this enumeration.
     *
     * @return the value of this instance
     */
    public String toString() {
        return value;
    }

    /**
     * Returns the value of this enumeration.
     *
     * @return the value of this instance
     */
    public String value() {
        return value;
    }

}
