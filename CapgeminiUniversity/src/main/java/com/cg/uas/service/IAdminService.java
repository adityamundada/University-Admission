package com.cg.uas.service;

import java.util.Date;
import java.util.List;

import com.cg.uas.entities.ProgramOfferedBean;
import com.cg.uas.entities.ProgramScheduledBean;
import com.cg.uas.exception.UniversityException;


public interface IAdminService {

	/* Add Program Offered*/
	public ProgramOfferedBean addProgramOffered(ProgramOfferedBean programOffered) throws UniversityException;
	
	/* Retrieves a list of offered programs details */
	public List<ProgramOfferedBean> viewProgramsOffered() throws UniversityException;

	/* View Offered Program */
	public ProgramOfferedBean findoffered(String name) throws UniversityException;

	/* Updates Offered Program */
	public boolean updateOffered(ProgramOfferedBean bean) throws UniversityException;

	/* Deletes Offered Program */
	public boolean deleteOffered(String name) throws UniversityException;

	/* Add Schedule for a Program */
	public ProgramScheduledBean addSchedule(ProgramScheduledBean programScheduledBean) throws UniversityException;

	/*View Programs scheduled between two dates */
	public List<ProgramScheduledBean> viewSchedule(Date startDate, Date endDate) throws UniversityException;

	/* Deletes Schedule for a Program */
	public ProgramScheduledBean deleteSchedule(String scheduledProgramID) throws UniversityException;
	
	/* Retrieves a list of scheduled programs details */
	public List<ProgramScheduledBean> viewProgramsScheduled() throws UniversityException;

	public String isValidAddSchedule(java.sql.Date startDate, java.sql.Date endDate,int duration) throws UniversityException;

}
