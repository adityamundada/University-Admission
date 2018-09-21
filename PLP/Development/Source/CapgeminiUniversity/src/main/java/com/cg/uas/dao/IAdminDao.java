package com.cg.uas.dao;

import java.util.Date;
import java.util.List;

import com.cg.uas.entities.ProgramOfferedBean;
import com.cg.uas.entities.ProgramScheduledBean;
import com.cg.uas.exception.UniversityException;

public interface IAdminDao {

	/* Add Program Offered*/
	public ProgramOfferedBean addProgramOffered(ProgramOfferedBean programOffered) throws UniversityException;
	
	/* Retrieves a list of offered programs details */
	public List<ProgramOfferedBean> viewProgramsOffered() throws UniversityException;

	/* Updates Offered Program */
	public boolean updateOffered(ProgramOfferedBean bean) throws UniversityException;

	/* View Offered Program */
	public ProgramOfferedBean findOffered(String name) throws UniversityException;

	/* Deletes Offered Program */
	public boolean deleteOffered(String name) throws UniversityException;

	/* Deletes Schedule for a Program */
	public ProgramScheduledBean deleteSchedule(String scheduledProgramID) throws UniversityException;

	/*View Programs scheduled between startdate and enddate */
	public List<ProgramScheduledBean> viewSchedule(Date startDate, Date endDate) throws UniversityException;

	/* Add Schedule for a Program */
	public ProgramScheduledBean addSchedule(ProgramScheduledBean programScheduledBean) throws UniversityException;

	/* Retrieves a list of scheduled programs details */
	public List<ProgramScheduledBean> viewProgramsScheduled() throws UniversityException;

}
