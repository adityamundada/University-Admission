package com.cg.uas.dao;

import java.util.Date;
import java.util.List;

import com.cg.uas.entities.ProgramOfferedBean;
import com.cg.uas.entities.ProgramScheduledBean;
import com.cg.uas.exception.UniversityException;

public interface IAdminDAO {

	
	public ProgramOfferedBean addProgramOffered(ProgramOfferedBean programOffered) throws UniversityException;
	
	public List<ProgramOfferedBean> viewProgramsOffered() throws UniversityException;

	public boolean updateOffered(ProgramOfferedBean bean) throws UniversityException;

	public ProgramOfferedBean findOffered(String name) throws UniversityException;

	public boolean deleteOffered(String name) throws UniversityException;

	public ProgramScheduledBean deleteSchedule(String scheduledProgramID) throws UniversityException;

	public List<ProgramScheduledBean> viewSchedule(Date startDate, Date endDate) throws UniversityException;

	public ProgramScheduledBean addSchedule(ProgramScheduledBean programScheduledBean) throws UniversityException;

	public List<ProgramScheduledBean> viewProgramsScheduled() throws UniversityException;

}
