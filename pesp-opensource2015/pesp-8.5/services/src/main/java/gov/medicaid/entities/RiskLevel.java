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
 * Represents a risk level.
 *
 * @author TCSASSEMBLER
 * @version 1.0
 */
public class RiskLevel extends LookupEntity {

    /**
     * Sorting index.
     */
    private int sortIndex;

    /**
     * Empty constructor.
     */
    public RiskLevel() {
    }

    /**
     * Gets the value of the field <code>sortIndex</code>.
     *
     * @return the sortIndex
     */
    public int getSortIndex() {
        return sortIndex;
    }

    /**
     * Sets the value of the field <code>sortIndex</code>.
     *
     * @param sortIndex the sortIndex to set
     */
    public void setSortIndex(int sortIndex) {
        this.sortIndex = sortIndex;
    }
}
