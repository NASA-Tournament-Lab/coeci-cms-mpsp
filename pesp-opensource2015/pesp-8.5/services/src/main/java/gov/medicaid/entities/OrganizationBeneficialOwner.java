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
 * A corporate beneficial owner.
 *
 * @author TCSASSEMBLER
 * @version 1.0
 */
public class OrganizationBeneficialOwner extends BeneficialOwner {

    /**
     * Entity legal name.
     */
    private String legalName;

    /**
     * Entity employer number.
     */
    private String fein;

    /**
     * Empty constructor.
     */
    public OrganizationBeneficialOwner() {
    }

    /**
     * Gets the value of the field <code>legalName</code>.
     *
     * @return the legalName
     */
    public String getLegalName() {
        return legalName;
    }

    /**
     * Sets the value of the field <code>legalName</code>.
     *
     * @param legalName the legalName to set
     */
    public void setLegalName(String legalName) {
        this.legalName = legalName;
    }

    /**
     * Gets the value of the field <code>fein</code>.
     *
     * @return the fein
     */
    public String getFein() {
        return fein;
    }

    /**
     * Sets the value of the field <code>fein</code>.
     *
     * @param fein the fein to set
     */
    public void setFein(String fein) {
        this.fein = fein;
    }
}
