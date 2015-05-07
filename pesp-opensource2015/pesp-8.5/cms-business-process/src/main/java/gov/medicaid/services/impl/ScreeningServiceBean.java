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

import java.util.Date;

import gov.medicaid.entities.ScreeningSchedule;
import gov.medicaid.services.PortalServiceException;
import gov.medicaid.services.ScreeningService;
import gov.medicaid.services.util.LogUtil;

import javax.ejb.Local;
import javax.ejb.Stateless;
import javax.ejb.TransactionAttribute;
import javax.ejb.TransactionAttributeType;
import javax.ejb.TransactionManagement;
import javax.ejb.TransactionManagementType;
import javax.persistence.PersistenceException;

/**
 * This class provides an implementation of the ScreeningDAO as a local EJB.
 *
 * <p>
 * <b>Thread Safety</b> This bean is mutable and not thread-safe as it deals with non-thread-safe entities. However, in
 * the context of being used in a container, it is thread-safe.
 * </p>
 *
 * @author argolite, TCSASSEMBLER
 * @version 1.0
 */
@Stateless
@TransactionManagement(TransactionManagementType.CONTAINER)
@Local(ScreeningService.class)
public class ScreeningServiceBean extends BaseService implements ScreeningService {

    /**
     * Constant id for the screening schedule.
     */
    private static final long SCREENING_SCHEDULE_ID = 1;

    /**
     * Default empty constructor.
     */
    public ScreeningServiceBean() {
    }

    /**
     * This method gets the screening schedule.
     *
     * @return the screening schedule
     * @throws PortalServiceException - If there are any errors during the execution of this method
     */
    @TransactionAttribute(TransactionAttributeType.SUPPORTS)
    public ScreeningSchedule getScreeningSchedule() throws PortalServiceException {
        String signature = "ScreeningDAOBean#getScreeningSchedule()";
        LogUtil.traceEntry(getLog(), signature, null, null);
        try {
            ScreeningSchedule schedule = getEm().find(ScreeningSchedule.class, SCREENING_SCHEDULE_ID);
            return LogUtil.traceExit(getLog(), signature, schedule);
        } catch (PersistenceException e) {
            throw new PortalServiceException("Could not database complete operation.", e);
        }
    }

    /**
     * This method saves the screening schedule.
     *
     * @param screeningSchedule - the screening schedule
     *
     * @throws IllegalArgumentException - If screeningSchedule is null
     * @throws PortalServiceException - If there are any errors during the execution of this method
     */
    @TransactionAttribute(TransactionAttributeType.REQUIRED)
    public void saveScreeningSchedule(ScreeningSchedule screeningSchedule) throws PortalServiceException {
        String signature = "ScreeningDAOBean#saveScreeningSchedule(ScreeningSchedule screeningSchedule)";
        LogUtil.traceEntry(getLog(), signature, new String[]{"screeningSchedule"}, new Object[]{screeningSchedule});

        if (screeningSchedule == null) {
            throw new IllegalArgumentException("Argument 'screeningSchedule' cannot be null.");
        }

        try {
            getEm().merge(screeningSchedule);
            LogUtil.traceExit(getLog(), signature, null);
        } catch (PersistenceException e) {
            LogUtil.traceError(getLog(), signature, e);
            throw new PortalServiceException("Could not database complete operation.", e);
        }
    }

    @Override
    public void performScreening(long userId) throws PortalServiceException {
        // TODO Auto-generated method stub

    }

    @Override
    public void performScreeningById(long enrollmentId) throws PortalServiceException {
        // TODO Auto-generated method stub

    }

    @Override
    public void scheduleMediCareProgramDataChange(int time) throws PortalServiceException {

    }

    @Override
    public void scheduleRevalidation(int time, long userId) throws PortalServiceException {

    }

    @Override
    public void scheduleScreening(int time) throws PortalServiceException {

    }

    @Override
    public void scheduleScreening(long id, Date date) throws PortalServiceException {

    }
}

