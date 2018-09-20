package com.cg.uas.dao;

import java.sql.Date;
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
	
	/************************************   VIEW ALL PROGRAMS SCHEDULE   *****************************************
 	- Function Name		:	viewAllScheduledPrograms()
	- Input Parameters	:	-
	- Return Type		:	List<ProgramScheduledBean>
	- Throws			:  	UniversityException
	- Author			:	cg 
	- Creation Date		:	14/09/2018
	- Description		:	Displays all scheduled programs
	 ********************************************************************************************************/ 
	
	@Override
	public List<ProgramScheduledBean> viewAllScheduledPrograms() throws UniversityException {
		TypedQuery<ProgramScheduledBean> tQuery = entityManager.createQuery(IQueryMapper.RETRIEVE_PROGRAMS_BY_ID, ProgramScheduledBean.class);
		return tQuery.getResultList();
	}
	
	/************************************   VIEW APPLICANT   *****************************************
 	- Function Name		:	viewApplicant()
	- Input Parameters	:	String scheduledProgramId
	- Return Type		:	List<ApplicationBean>
	- Throws			:  	UniversityException
	- Author			:	cg 
	- Creation Date		:	14/09/2018
	- Description		:	Displays applicants for a particular program
	 ********************************************************************************************************/ 

	@Override
	public List<ApplicationBean> viewApplicant(String scheduledProgramId) throws UniversityException {
		TypedQuery<ApplicationBean> tQuery = entityManager.createQuery(IQueryMapper.RETRIEVE_APPLICANTS, ApplicationBean.class);
		tQuery.setParameter(1, scheduledProgramId);
		return tQuery.getResultList();
	}
	
	/************************************   ACCEPT APPLICANT   *****************************************
 	- Function Name		:	accept(Integer applicationId)
	- Input Parameters	:	Integer applicationId
	- Return Type		:	ApplicationBean
	- Throws			:  	UniversityException
	- Author			:	cg 
	- Creation Date		:	14/09/2018
	- Description		:	Accepts an Applicant
	 ********************************************************************************************************/ 

	@Override
	public ApplicationBean accept(Integer applicationId) throws UniversityException {
		Query query = entityManager.createQuery(IQueryMapper.SET_STATUS_ACCEPT);
		query.setParameter(1, applicationId);
		query.executeUpdate();
		return null;
	}

	/************************************   VIEW ACCEPTED APPLICANTS  *****************************************
 	- Function Name		:	confirmedApplicants()
	- Input Parameters	:	String scheduledProgramId
	- Return Type		:	List<ApplicationBean>
	- Throws			:  	UniversityException
	- Author			:	cg 
	- Creation Date		:	14/09/2018
	- Description		:	Displays accepted applications for a particular scheduled program
	 ********************************************************************************************************/ 
	
	@Override
	public List<ApplicationBean> confirmedApplicants(String scheduledProgramId) throws UniversityException {
		TypedQuery<ApplicationBean> tQuery = entityManager.createQuery(IQueryMapper.RETRIEVE_APPLICANTS_STATUS_ACCEPTED, ApplicationBean.class);
		tQuery.setParameter(1, scheduledProgramId);
		return tQuery.getResultList();
	}

	/************************************   ADD INTERVIEW DATE   *****************************************
 	- Function Name		:	interview(Integer applicationId, Date date)
	- Input Parameters	:	Integer applicationId, Date date
	- Return Type		:	ApplicationBean
	- Throws			:  	UniversityException
	- Author			:	cg 
	- Creation Date		:	14/09/2018
	- Description		:	Adds interview date for an applicant
	 ********************************************************************************************************/ 
	
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

	/************************************    CONFIRM APPLICANT  *****************************************
 	- Function Name		:	confirm(Integer applicationId)
	- Input Parameters	:	Integer applicationId
	- Return Type		:	ApplicationBean
	- Throws			:  	UniversityException
	- Author			:	cg 
	- Creation Date		:	14/09/2018
	- Description		:	Confirms applicant 
	 ********************************************************************************************************/ 
	
	@Override
	public ApplicationBean confirm(Integer applicationId) throws UniversityException {
		Query query = entityManager.createQuery(IQueryMapper.SET_STATUS_CONFIRMED);
		query.setParameter(1, applicationId);
		query.executeUpdate();
		return null;
	}
	
	/************************************    REJECT APPLICANT  *****************************************
 	- Function Name		:	reject(Integer applicationId)
	- Input Parameters	:	Integer applicationId
	- Return Type		:	ApplicationBean
	- Throws			:  	UniversityException
	- Author			:	cg 
	- Creation Date		:	14/09/2018
	- Description		:	Rejects applicant 
	 ********************************************************************************************************/ 

	@Override
	public ApplicationBean reject(Integer applicationId) throws UniversityException {
		Query query = entityManager.createQuery(IQueryMapper.SET_STATUS_REJECT);
		query.setParameter(1, applicationId);
		query.executeUpdate();
		return null;
	}

	/************************************   VIEW CONFIRMED APPLICANTS  *****************************************
 	- Function Name		:	viewConfirmedApplicants(String scheduledProgramId)
	- Input Parameters	:	String scheduledProgramId
	- Return Type		:	List<ParticipantBean>
	- Throws			:  	UniversityException
	- Author			:	cg 
	- Creation Date		:	14/09/2018
	- Description		:	Displays confirmed applicants for a particular scheduled program
	 ********************************************************************************************************/ 
	
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
	
	/************************************   VALIDATE START DATE   *****************************************
 	- Function Name		:	getStartDateForValidation(Integer applicationId)
	- Input Parameters	:	Integer applicationId
	- Return Type		:	Date
	- Throws			:  	UniversityException
	- Author			:	cg 
	- Creation Date		:	14/09/2018
	- Description		:	Validates the start date
	 ********************************************************************************************************/ 

	
	@Override
	public Date getStartDateForValidation(Integer applicationId) throws UniversityException {

		Date startDate;
		ProgramScheduledBean programScheduledBean = new ProgramScheduledBean();
		TypedQuery<ProgramScheduledBean> tQuery = entityManager.createQuery(IQueryMapper.RETRIEVE_START_DATE_FOR_VALIDATION, ProgramScheduledBean.class);
		tQuery.setParameter(1, applicationId);
		
		programScheduledBean = tQuery.getSingleResult();
		
		startDate = programScheduledBean.getStartDate();
	
		return startDate;
	}
}