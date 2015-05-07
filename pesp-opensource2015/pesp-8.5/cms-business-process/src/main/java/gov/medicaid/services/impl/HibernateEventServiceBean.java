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

import gov.medicaid.entities.Event;
import gov.medicaid.services.CMSConfigurator;
import gov.medicaid.services.EventService;
import gov.medicaid.services.PortalServiceException;
import gov.medicaid.services.util.LogUtil;

import java.util.List;

import javax.annotation.PostConstruct;
import javax.ejb.Local;
import javax.ejb.Stateless;
import javax.ejb.TransactionAttribute;
import javax.ejb.TransactionAttributeType;
import javax.ejb.TransactionManagement;
import javax.ejb.TransactionManagementType;
import javax.persistence.PersistenceException;
import javax.persistence.Query;

/**
 * <p>
 * This class provides an implementation of the AgreementDocumentDAO.
 * </p>
 * <p>
 * This bean is mutable and not thread-safe as it deals with non-thread-safe entities. However, in the context of being
 * used in a container, it is thread-safe.
 * </p>
 *
 * @author argolite, TCSASSEMBLER
 * @version 1.0
 */
@Stateless
@TransactionManagement(TransactionManagementType.CONTAINER)
@Local(EventService.class)
public class HibernateEventServiceBean extends BaseService implements EventService {

    /**
     * Represents the amount of items to retrieve in the getLatest call. It is injected by the container. it is used in
     * the getLatest method. It may have any value. It is fully mutable, but not expected to change after dependency
     * injection.
     */
    private int maxResults;

    /**
     * Empty constructor.
     */
    public HibernateEventServiceBean() {
    }

    /**
     * This method checks that all required injection fields are in fact provided.
     */
    @PostConstruct
    protected void init() {
        super.init();
        CMSConfigurator config = new CMSConfigurator();
        if (maxResults == 0) {
            maxResults = config.getMaxNotificationsDisplay();
        }
    }

    /**
     * This method creates the event and returns the new ID of the created entity.
     *
     * @param event the event to create
     *
     * @return the ID of the added event
     *
     * @throws IllegalArgumentException if event is null
     * @throws PortalServiceException if there are any errors during the execution of this method
     */
    @TransactionAttribute(TransactionAttributeType.REQUIRED)
    public long create(Event event) throws PortalServiceException {
        String signature = "HibernateEventDAO#create(Event event)";
        LogUtil.traceEntry(getLog(), signature, new String[] {"event"}, new Object[] {event});

        try {
            if (event == null) {
                throw new IllegalArgumentException("Argument 'event' cannot be null.");
            }

            getEm().persist(event);

            return LogUtil.traceExit(getLog(), signature, event.getId());
        } catch (PersistenceException e) {
            LogUtil.traceError(getLog(), signature, e);
            throw new PortalServiceException("Could not database complete operation.", e);
        }
    }

    /**
     * This method gets the latest events.
     *
     * @return - the latest events
     *
     * @throws IllegalStateException if maxResults is not positive
     * @throws PortalServiceException if there are any errors during the execution of this method
     */
    @SuppressWarnings("unchecked")
    @TransactionAttribute(TransactionAttributeType.SUPPORTS)
    public List<Event> getLatest() throws PortalServiceException {
        String signature = "HibernateEventDAO#getLatest";
        LogUtil.traceEntry(getLog(), signature, null, null);

        try {
            if (maxResults <= 0) {
                throw new IllegalStateException("maxResults should be configured as positive");
            }
            // Create query string:
            String queryString = "SELECT entity FROM Event entity ORDER BY entity.createdOn DESC";

            // Get query object:
            Query query = getEm().createQuery(queryString);
            // Set page size:
            query.setFirstResult(0);
            query.setMaxResults(maxResults);

            // Execute query:
            List<Event> events = query.getResultList();

            return LogUtil.traceExit(getLog(), signature, events);
        } catch (PersistenceException e) {
            throw new PortalServiceException("Could not database complete operation.", e);
        }
    }
}
