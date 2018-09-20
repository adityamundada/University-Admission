package com.cg.uas.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
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

	@Override
	public ProgramOfferedBean addProgramOffered(ProgramOfferedBean programOfferedBean) throws UniversityException {
		
		
		return adminDao.addProgramOffered(programOfferedBean);
	}

	@Override
	public List<ProgramOfferedBean> viewProgramsOffered()
			throws UniversityException {
		return adminDao.viewProgramsOffered();
	}

	@Override
	public ProgramOfferedBean findoffered(String name)throws UniversityException {
		return adminDao.findOffered(name);
	}

	@Override
	public boolean updateOffered(ProgramOfferedBean bean) throws UniversityException{
		System.out.println("------------------------------------in offererd service");
		return adminDao.updateOffered(bean);

	}

	@Override
	public boolean deleteOffered(String name) throws UniversityException {
		return adminDao.deleteOffered(name);

		
	}

	@Override
	public ProgramScheduledBean addSchedule(
			ProgramScheduledBean programScheduledBean)
			throws UniversityException {
		return adminDao.addSchedule(programScheduledBean);

	}

	@Override
	public List<ProgramScheduledBean> viewSchedule(Date startDate, Date endDate)
			throws UniversityException {
		return adminDao.viewSchedule(startDate, endDate);

	}

	@Override
	public ProgramScheduledBean deleteSchedule(String scheduledProgramID)
			throws UniversityException {
		return adminDao.deleteSchedule(scheduledProgramID);

	}

	@Override
	public List<ProgramScheduledBean> viewProgramsScheduled() throws UniversityException{
		return adminDao.viewProgramsScheduled();
	}
	
	@Override
	public String isValidAddSchedule(java.sql.Date startDate, java.sql.Date endDate,int duration) throws UniversityException {
	
		String startDateinString = startDate.toString();
		String endDateinString = endDate.toString();
		Date d1;
		Date d2;
		String errorMessage = "";
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		try {
			d1 = format.parse(startDateinString);
			d2 = format.parse(endDateinString);
		} catch (ParseException e) {
			throw new UniversityException("parsing error. Invalid date");
		}	
		
		Calendar startCal = new GregorianCalendar();
		Calendar endCal = new GregorianCalendar();
		startCal.setTime(d1);
		endCal.setTime(d2);
		int diffYear = endCal.get(Calendar.YEAR) - startCal.get(Calendar.YEAR);
		int diffMonth = diffYear * 12 + endCal.get(Calendar.MONTH)
				- startCal.get(Calendar.MONTH);
		int diffDays = endCal.get(Calendar.DAY_OF_MONTH)
				- startCal.get(Calendar.DAY_OF_MONTH);
	
	
		if (diffMonth == duration && diffDays == 0) {
	
		} else {
			errorMessage += "\nDifference of entered dates does not match with duration of corresponding program";
		}
		return errorMessage; 
	}
}
 