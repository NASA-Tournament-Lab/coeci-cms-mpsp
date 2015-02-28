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

import gov.medicaid.entities.CMSUser;
import gov.medicaid.entities.LookupEntity;
import gov.medicaid.services.CMSConfigurator;
import gov.medicaid.services.LookupService;
import gov.medicaid.services.SequenceGenerator;
import gov.medicaid.services.util.LogUtil;

import javax.annotation.PostConstruct;
import javax.ejb.EJB;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import com.topcoder.util.log.Log;

/**
 * A base service class that other classes will extend that provides logging.
 *
 * <p>
 * <b>Thread Safety</b> This bean is mutable and not thread-safe as it deals with non-thread-safe entities. However, in
 * the context of being used in a container, it is thread-safe.
 * </p>
 *
 * @author TCSASSEMBLER
 * @version 1.0
 */
public abstract class BaseService {

    /**
     * It will be used to log events from the service implementations.
     */
    private Log log = null;

    /**
     * Lookup service.
     */
    @EJB
    private LookupService lookupService;

    /**
     * Sequence generator.
     */
    @EJB
    private SequenceGenerator sequence;

    /**
     * The entity manager.
     */
    @PersistenceContext(unitName = "cms")
    private EntityManager em;

    /**
     * Configured user for system calls.
     */
    private CMSUser systemUser;

    /**
     * Default empty constructor.
     */
    protected BaseService() {
    }

    /**
     * Gets the value of the field <code>log</code>.
     *
     * @return the log
     */
    public Log getLog() {
        return log;
    }

    /**
     * This method checks that all required injection fields are in fact provided.
     */
    @PostConstruct
    protected void init() {
        if (log == null) {
            log = LogUtil.getLog(getClass().getName());
        }

        CMSConfigurator config = new CMSConfigurator();
        if (lookupService == null) {
            lookupService = config.getLookupService();
        }

        if (em == null) {
            em = config.getPortalEntityManager();
        }

        if (sequence == null) {
            sequence = config.getSequenceGenerator();
        }

        systemUser = config.getSystemUser();
    }

    /**
     * Retrieves the lookup values given the description.
     *
     * @param cls the expected type
     * @param description the description
     * @param <T> the type of lookup entity
     * @return the matching lookup entry
     */
    protected <T extends LookupEntity> T findLookupByDescription(Class<T> cls, String description) {
        return lookupService.findLookupByDescription(cls, description);
    }

    /**
     * Gets the value of the field <code>em</code>.
     *
     * @return the em
     */
    public EntityManager getEm() {
        return em;
    }

    /**
     * Sets the value of the field <code>em</code>.
     *
     * @param em the em to set
     */
    public void setEm(EntityManager em) {
        this.em = em;
    }

    /**
     * Gets the value of the field <code>lookupService</code>.
     * @return the lookupService
     */
    public LookupService getLookupService() {
        return lookupService;
    }

    /**
     * Sets the value of the field <code>lookupService</code>.
     * @param lookupService the lookupService to set
     */
    public void setLookupService(LookupService lookupService) {
        this.lookupService = lookupService;
    }

    /**
     * Gets the value of the field <code>systemUser</code>.
     * @return the systemUser
     */
    public CMSUser getSystemUser() {
        return systemUser;
    }

    /**
     * Gets the value of the field <code>sequence</code>.
     * @return the sequence
     */
    public SequenceGenerator getSequence() {
        return sequence;
    }

    /**
     * Sets the value of the field <code>sequence</code>.
     * @param sequence the sequence to set
     */
    public void setSequence(SequenceGenerator sequence) {
        this.sequence = sequence;
    }

    /**
     * Sets the value of the field <code>log</code>.
     * @param log the log to set
     */
    public void setLog(Log log) {
        this.log = log;
    }

    /**
     * Sets the value of the field <code>systemUser</code>.
     * @param systemUser the systemUser to set
     */
    public void setSystemUser(CMSUser systemUser) {
        this.systemUser = systemUser;
    }
}