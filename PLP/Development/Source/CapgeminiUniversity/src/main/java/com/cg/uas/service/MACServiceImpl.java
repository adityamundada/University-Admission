package com.cg.uas.service;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cg.uas.dao.IMACDao;
import com.cg.uas.entities.ApplicationBean;
import com.cg.uas.entities.ParticipantBean;
import com.cg.uas.entities.ProgramScheduledBean;
import com.cg.uas.exception.UniversityException;

@Service
public class MACServiceImpl implements IMACService {

	@Autowired
	IMACDao MACdao;

	/* View all scheduled programs */
	@Override
	public List<ProgramScheduledBean> viewAllScheduledPrograms() throws UniversityException {
		return MACdao.viewAllScheduledPrograms();
	}
	

	/* View all applicants for a scheduled program */
	@Override
	public List<ApplicationBean> viewApplicant(String  scheduledProgramId) throws UniversityException {
		return MACdao.viewApplicant(scheduledProgramId);
	}
	

	/* Accept an application */
	@Override
	public ApplicationBean accept(Integer applicationId) throws UniversityException {
		return MACdao.accept(applicationId);
	}
	

	/* View all confirmed applicants */
	@Override
	public List<ApplicationBean> confirmedApplicants(String scheduledProgramId) throws UniversityException {
		return MACdao.confirmedApplicants(scheduledProgramId);
	}
	

	/* Schedule an Interview */
	@Override
	public ApplicationBean interview(Integer applicationId, Date date) throws UniversityException {
		return MACdao.interview(applicationId, date);
	}

	/* Confirm an application */
	@Override
	public ApplicationBean confirm(Integer applicationId) throws UniversityException {
		return MACdao.confirm(applicationId);
	}

	/* Reject an application */
	@Override
	public ApplicationBean reject(Integer applicationId) throws UniversityException {
		return MACdao.reject(applicationId);
	}
	
	/* View all Confirmed Applicants */

	@Override
	public List<ParticipantBean> viewConfirmedApplicants(String scheduledProgramId) {
		return MACdao.viewConfirmedApplicants(scheduledProgramId);
	}
	

	/* Validates start date  */
	@Override
	public java.sql.Date getStartDateForValidation(Integer applicationId) throws UniversityException {
		return MACdao.getStartDateForValidation(applicationId);
	}
}