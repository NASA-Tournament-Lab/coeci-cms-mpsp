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

import java.io.Serializable;

/**
 * This serves as the base class for all persisted entities.
 *
 * @author TCSASSEMBLER
 * @version 1.0
 */
public abstract class IdentifiableEntity implements Serializable {

    /**
     * The entity identifier.
     */
    private long id;

    /**
     * Default empty constructor.
     */
    protected IdentifiableEntity() {
    }

    /**
     * Gets the value of the field <code>id</code>.
     *
     * @return the id
     */
    public long getId() {
        return id;
    }

    /**
     * Sets the value of the field <code>id</code>.
     *
     * @param id the id to set
     */
    public void setId(long id) {
        this.id = id;
    }
}