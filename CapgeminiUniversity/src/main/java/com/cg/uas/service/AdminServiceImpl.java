package com.cg.uas.service;

import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cg.uas.dao.IAdminDao;
import com.cg.uas.entities.ProgramOfferedBean;
import com.cg.uas.entities.ProgramScheduledBean;
import com.cg.uas.exception.UniversityException;


@Service
@Transactional
public class AdminServiceImpl implements IAdminService{
	
	
	@Autowired
	private IAdminDao adminDao;

	/* Add Program Offered */
	@Override
	public ProgramOfferedBean addProgramOffered(ProgramOfferedBean programOfferedBean) throws UniversityException {
		
		
		return adminDao.addProgramOffered(programOfferedBean);
	}

	/* View Programs Offered*/
	@Override
	public List<ProgramOfferedBean> viewProgramsOffered()
			throws UniversityException {
		return adminDao.viewProgramsOffered();
	}

	/* Find Program Offered */
	@Override
	public ProgramOfferedBean findoffered(String name)throws UniversityException {
		return adminDao.findOffered(name);
	}

	/* Update Program Offered*/
	@Override
	public boolean updateOffered(ProgramOfferedBean bean) throws UniversityException{
		System.out.println("------------------------------------in offererd service");
		return adminDao.updateOffered(bean);

	}

	/* Delete Program Offered*/
	@Override
	public boolean deleteOffered(String name) throws UniversityException {
		return adminDao.deleteOffered(name);

		
	}

	/* Add Schedule for Program */
	@Override
	public ProgramScheduledBean addSchedule(
			ProgramScheduledBean programScheduledBean)
			throws UniversityException {
		return adminDao.addSchedule(programScheduledBean);

	}

	/* View Scheduled Programs between two dates */
	@Override
	public List<ProgramScheduledBean> viewSchedule(Date startDate, Date endDate)
			throws UniversityException {
		return adminDao.viewSchedule(startDate, endDate);

	}
	
	/* Delete Schedule for Program */

	@Override
	public ProgramScheduledBean deleteSchedule(String scheduledProgramID)
			throws UniversityException {
		return adminDao.deleteSchedule(scheduledProgramID);

	}

	/* View Programs Scheduled */
	@Override
	public List<ProgramScheduledBean> viewProgramsScheduled() throws UniversityException{
		return adminDao.viewProgramsScheduled();
	}
}
 