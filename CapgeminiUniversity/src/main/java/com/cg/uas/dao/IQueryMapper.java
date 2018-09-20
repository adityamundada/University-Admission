package com.cg.uas.dao;

public interface IQueryMapper {


	/************************************************* Administrator Queries*****************************************/


	public static final String VIEW_PROGRAMS_OFFERED = "SELECT p FROM ProgramOfferedBean p";
	
	public static final String DELETE_PROGRAMS_OFFERED = "SELECT p FROM ProgramScheduledBean p WHERE p.programName =:programName";  
	
	public static final String DELETE_PROGRAMS_SCHEDULED = "SELECT a FROM ApplicationBean a WHERE a.scheduledProgramID =:scheduleId";
	
	public static final String VIEW_SCHEDULE_BYDATE = "SELECT p FROM ProgramScheduledBean p WHERE start_date >=:startDate AND end_date <=:endDate";
	
	public static final String VIEW_PROGRAMS_SCHEDULED = "SELECT p FROM ProgramScheduledBean p";
	
	
	
	

	/************************************************* Applicant's Queries*****************************************/
	

	public static final String GET_ROLE="SELECT role FROM Users WHERE login_id=? and password=?";
	
	public static final String INSERT_APPLICANT_QUERY="INSERT INTO application VALUES(applicationid_seq.NEXTVAL,?,?,?,?,?,?,?,?,?)";
	
	public static final String APPLICATIONID_QUERY_SEQUENCE="SELECT applicationid_seq.CURRVAL FROM DUAL";
	
	public static final String VIEW_APPLICATION_STATUS="SELECT status FROM APPLICATION WHERE application_Id=?";
	
	public static final String GET_ALL_SCHEDULE_PROGRAM_QUERY = "SELECT * FROM programs_scheduled";
	

	
	
/************************************************* MAC's Queries*****************************************/

	
	public static final String RETRIEVE_PROGRAMS_BY_ID = "SELECT psb FROM ProgramScheduledBean psb";
	
	public static final String RETRIEVE_APPLICANTS = "SELECT ab from ApplicationBean ab WHERE ab.scheduledProgramID = ?1";
	
	public static final String SET_STATUS_ACCEPT = "UPDATE ApplicationBean SET status = 'ACCEPTED' WHERE applicationId = ?1";
	
	public static final String RETRIEVE_APPLICANTS_STATUS_ACCEPTED = "SELECT ab from ApplicationBean ab where ab.scheduledProgramID = ?1 AND ab.status='ACCEPTED'";
	
	public static final String SET_INTERVIEW_DATE = "UPDATE ApplicationBean SET dateOfInterview = ?1 WHERE applicationId = ?2";
	
	public static final String SET_STATUS_CONFIRMED = "UPDATE  ApplicationBean SET status = 'CONFIRMED' WHERE applicationId = ?1";
	
	public static final String SET_STATUS_REJECT = "UPDATE ApplicationBean SET status = 'REJECTED' WHERE applicationId = ?1";
	
	public static final String RETRIEVE_APPLICANTS_STATUS_CONFIRMED = "SELECT ab from ApplicationBean ab where ab.scheduledProgramID = ?1 AND ab.status='CONFIRMED'";
	
	public static final String RETRIEVE_CONFIRMED_PARTICIPANT = "SELECT pb from ParticipantBean pb";
	
	public static final String RETRIEVE_START_DATE_FOR_VALIDATION = "SELECT psb FROM ProgramScheduledBean psb WHERE psb.scheduledProgramID = (SELECT ab.scheduledProgramID FROM ApplicationBean ab WHERE ab.applicationId = ?1)";

	
	
	
	
	
	
	public static final String VIEW_SCHEDULED_PROGRAMS = "SELECT p from ProgramScheduledBean p";
	
	
}
