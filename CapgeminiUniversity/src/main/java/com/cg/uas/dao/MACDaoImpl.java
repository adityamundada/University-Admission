package com.cg.uas.dao;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.cg.uas.entities.ApplicationBean;
import com.cg.uas.entities.ParticipantBean;
import com.cg.uas.entities.ProgramScheduledBean;
import com.cg.uas.exception.UniversityException;

@Repository
@Transactional
public class MACDaoImpl implements IMACDao {
	
	@PersistenceContext
	private EntityManager entityManager;
	
	@Override
	public List<ProgramScheduledBean> viewAllScheduledPrograms() throws UniversityException {
		TypedQuery<ProgramScheduledBean> tQuery = entityManager.createQuery(IQueryMapper.RETRIEVE_PROGRAMS_BY_ID, ProgramScheduledBean.class);
		return tQuery.getResultList();
	}

	@Override
	public List<ApplicationBean> viewApplicant(String scheduledProgramId) throws UniversityException {
		TypedQuery<ApplicationBean> tQuery = entityManager.createQuery(IQueryMapper.RETRIEVE_APPLICANTS, ApplicationBean.class);
		tQuery.setParameter(1, scheduledProgramId);
		return tQuery.getResultList();
	}

	@Override
	public ApplicationBean accept(Integer applicationId) throws UniversityException {
		Query query = entityManager.createQuery(IQueryMapper.SET_STATUS_ACCEPT);
		query.setParameter(1, applicationId);
		query.executeUpdate();
		return null;
	}

	@Override
	public List<ApplicationBean> confirmedApplicants(String scheduledProgramId) throws UniversityException {
		TypedQuery<ApplicationBean> tQuery = entityManager.createQuery(IQueryMapper.RETRIEVE_APPLICANTS_STATUS_ACCEPTED, ApplicationBean.class);
		tQuery.setParameter(1, scheduledProgramId);
		return tQuery.getResultList();
	}

	@Override
	public ApplicationBean interview(Integer applicationId, Date date) throws UniversityException {
		
		/*SimpleDateFormat sdf1 = new SimpleDateFormat("dd/MM/yyyy");
		Date date = null;
		try {
			date = sdf1.parse(dateInString);
		} 
		catch (ParseException e) {
			System.err.println(e.getMessage());
		}
		java.sql.Date sqlDate = new java.sql.Date(date.getTime()); */
		
		Query query = entityManager.createQuery(IQueryMapper.SET_INTERVIEW_DATE);
		query.setParameter(1, date);
		query.setParameter(2, applicationId);
		query.executeUpdate();
		return null;
	}

	@Override
	public ApplicationBean confirm(Integer applicationId) throws UniversityException {
		Query query = entityManager.createQuery(IQueryMapper.SET_STATUS_CONFIRMED);
		query.setParameter(1, applicationId);
		query.executeUpdate();
		return null;
	}

	@Override
	public ApplicationBean reject(Integer applicationId) throws UniversityException {
		Query query = entityManager.createQuery(IQueryMapper.SET_STATUS_REJECT);
		query.setParameter(1, applicationId);
		query.executeUpdate();
		return null;
	}

	@Override
	public List<ParticipantBean> viewConfirmedApplicants(String scheduledProgramId) {
		List<ApplicationBean> applicationList = null;
		List<ParticipantBean> participantList = null;

		TypedQuery<ApplicationBean> tQuery = entityManager.createQuery(IQueryMapper.RETRIEVE_APPLICANTS_STATUS_CONFIRMED, ApplicationBean.class);
		tQuery.setParameter(1, scheduledProgramId);
		
		applicationList = tQuery.getResultList();
		
		if(applicationList != null) {
			for(ApplicationBean appBean : applicationList) {
				Query query = entityManager.createNativeQuery("INSERT INTO Participant(roll_no, email_id, application_id, scheduled_program_id) " + "VALUES(rollnumber_seq.NEXTVAL, ?, ?, ?)", ParticipantBean.class);
				query.setParameter(1, appBean.getEmailID());
				query.setParameter(2, appBean.getApplicationId());
				query.setParameter(3, appBean.getScheduledProgramID());
				query.executeUpdate();
			}
		
			TypedQuery<ParticipantBean> tQuery2 = entityManager.createQuery(IQueryMapper.RETRIEVE_CONFIRMED_PARTICIPANT, ParticipantBean.class);
			tQuery.setParameter(1, scheduledProgramId);
			participantList = tQuery2.getResultList();
			return participantList;
		}
		else {
			return null;
		}
	}
}