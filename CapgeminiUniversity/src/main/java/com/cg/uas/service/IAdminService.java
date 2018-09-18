package com.cg.uas.service;

import java.util.Date;
import java.util.List;

import com.cg.uas.entities.ProgramOfferedBean;
import com.cg.uas.entities.ProgramScheduledBean;
import com.cg.uas.exception.UniversityException;


public interface IAdminService {

	public ProgramOfferedBean addProgramOffered(ProgramOfferedBean programOffered) throws UniversityException;
	
	public List<ProgramOfferedBean> viewProgramsOffered() throws UniversityException;

	public ProgramOfferedBean findoffered(String name) throws UniversityException;

	public boolean updateOffered(ProgramOfferedBean bean) throws UniversityException;

	public boolean deleteOffered(String name) throws UniversityException;

	public ProgramScheduledBean addSchedule(ProgramScheduledBean programScheduledBean) throws UniversityException;

	public List<ProgramScheduledBean> viewSchedule(Date startDate, Date endDate) throws UniversityException;

	public ProgramScheduledBean deleteSchedule(String scheduledProgramID) throws UniversityException;
	
	public List<ProgramScheduledBean> viewProgramsScheduled() throws UniversityException;

	
}
