package com.cg.uas.service;

import java.util.Date;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cg.uas.dao.IAdminDAO;
import com.cg.uas.entities.ProgramOfferedBean;
import com.cg.uas.entities.ProgramScheduledBean;
import com.cg.uas.exception.UniversityException;


@Service
@Transactional
public class AdminServiceImpl implements IAdminService{
	
	
	@Autowired
	IAdminDAO adminDAO;

	@Override
	public ProgramOfferedBean addProgramOffered(ProgramOfferedBean programOfferedBean) throws UniversityException {
		
		
		return adminDAO.addProgramOffered(programOfferedBean);
	}

	@Override
	public List<ProgramOfferedBean> viewProgramsOffered()
			throws UniversityException {
		return adminDAO.viewProgramsOffered();
	}

	@Override
	public ProgramOfferedBean findoffered(String name)throws UniversityException {
		return adminDAO.findOffered(name);
	}

	@Override
	public boolean updateOffered(ProgramOfferedBean bean) throws UniversityException{
		return adminDAO.updateOffered(bean);

	}

	@Override
	public boolean deleteOffered(String name) throws UniversityException {
		return adminDAO.deleteOffered(name);

		
	}

	@Override
	public ProgramScheduledBean addSchedule(
			ProgramScheduledBean programScheduledBean)
			throws UniversityException {
		return adminDAO.addSchedule(programScheduledBean);

	}

	@Override
	public List<ProgramScheduledBean> viewSchedule(Date startDate, Date endDate)
			throws UniversityException {
		return adminDAO.viewSchedule(startDate, endDate);

	}

	@Override
	public ProgramScheduledBean deleteSchedule(String scheduledProgramID)
			throws UniversityException {
		return adminDAO.deleteSchedule(scheduledProgramID);

	}

	@Override
	public List<ProgramScheduledBean> viewProgramsScheduled() throws UniversityException{
		return adminDAO.viewProgramsScheduled();
	}
}
 