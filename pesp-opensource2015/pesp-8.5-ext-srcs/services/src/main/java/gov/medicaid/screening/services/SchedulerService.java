/*
 * Copyright (C) 2012 TopCoder Inc., All Rights Reserved.
 */
package gov.medicaid.screening.services;

/**
 * The local interface for the timer.
 * @author zsudraco, hanshuai
 * @version 1.0
 */
public interface SchedulerService {
    /**
     * Create a timer.
     *
     * @throws ServiceException
     *             if any error occurs.
     */
    public void scheduleTimer() throws ServiceException;
}
