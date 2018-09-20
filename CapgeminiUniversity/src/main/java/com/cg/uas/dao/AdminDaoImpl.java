package com.cg.uas.dao;

import java.util.Date;
import java.util.List;




import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;

import com.cg.uas.entities.ApplicationBean;
import com.cg.uas.entities.ProgramOfferedBean;
import com.cg.uas.entities.ProgramScheduledBean;
import com.cg.uas.exception.UniversityException;


@Repository
public class AdminDaoImpl implements IAdminDao{

	@PersistenceContext
	EntityManager entityManager;
	
	/************************************   ADD PROGRAMS OFFERED  ********************************************
 	- Function Name		:	addProgramOffered(ProgramOfferedBean programOfferedBean)
	- Input Parameters	:	ProgramOfferedBean
	- Return Type		:	ProgramOfferedBean
	- Throws			:  	UniversityException
	- Author			:	cg 
	- Creation Date		:	14/09/2018
	- Description		:	adds program offered to the database
 ********************************************************************************************************/
	
	@Override
	public ProgramOfferedBean addProgramOffered(ProgramOfferedBean programOfferedBean) throws UniversityException {
	
		
		entityManager.persist(programOfferedBean);
		entityManager.flush();
		
		return programOfferedBean;
	}

	/************************************   VIEW PROGRAMS OFFERED  *****************************************
 	- Function Name		:	viewProgramsOffered()
	- Input Parameters	:	-
	- Return Type		:	List<ProgramOfferedBean>
	- Throws			:  	UniversityException
	- Author			:	cg 
	- Creation Date		:	14/09/2018
	- Description		:	retrieves the programs offered data 
	 ********************************************************************************************************/ 
	
	@Override
	public List<ProgramOfferedBean> viewProgramsOffered() throws UniversityException {

		TypedQuery<ProgramOfferedBean> query=entityManager.createQuery(IQueryMapper.VIEW_PROGRAMS_OFFERED,ProgramOfferedBean.class);
		return query.getResultList();
	}

	/************************************   UPDATE PROGRAMS OFFERED  *****************************************
 	- Function Name		:	updateOffered(ProgramOfferedBean bean)
	- Input Parameters	:	ProgramOfferedBean bean
	- Return Type		:	boolean
	- Throws			:  	UniversityException
	- Author			:	cg 
	- Creation Date		:	14/09/2018
	- Description		:	updates the programs offered row 
	 ********************************************************************************************************/ 

	@Override
	public boolean updateOffered(ProgramOfferedBean bean)throws UniversityException {
		entityManager.merge(bean);

		return true;
	}

	/************************************   FIND PROGRAM OFFERED  *************************************************
 	- Function Name		:	findOffrered(String name)
	- Input Parameters	:	String name
	- Return Type		:	ProgramOfferedBean
	- Throws			:  	UniversityException
	- Author			:	cg 
	- Creation Date		:	14/09/2018
	- Description		:	retrieves the program data for a particular name 
	 ********************************************************************************************************/  
	
	@Override
	public ProgramOfferedBean findOffered(String name)throws UniversityException {
		ProgramOfferedBean bean = entityManager.find(
				ProgramOfferedBean.class, name);
		if (bean != null) {

			return bean;
		} else
			return null;
	}

	/************************************   DELETE PROGRAMS OFFERED  *****************************************
 	- Function Name		:	deleteOffered(String name)
	- Input Parameters	:	String name
	- Return Type		:	boolean
	- Throws			:  	UniversityException
	- Author			:	cg 
	- Creation Date		:	14/09/2018
	- Description		:	delete the programs offered row 
	 ********************************************************************************************************/ 
	
	@Override
	public boolean deleteOffered(String name) throws UniversityException {
		// 
		ProgramOfferedBean bean = entityManager.find(ProgramOfferedBean.class, name);
		if (bean == null) {
			return false;
		}else{

			TypedQuery<ProgramScheduledBean> query=entityManager.createQuery(IQueryMapper.DELETE_PROGRAMS_OFFERED,ProgramScheduledBean.class);
			query.setParameter("programName", name);
			List<ProgramScheduledBean> scheduleBean  =query.getResultList();
			if(scheduleBean.size()==0){
				entityManager.remove(bean);
				return true;
			}else{
				return false;
			
			}
				
		}
			
	}
	/************************************   DELETE PROGRAM SCHEDULE   *****************************************
 	- Function Name		:	deleteSchedule(String scheduledProgramID)
	- Input Parameters	:	String scheduledProgramID
	- Return Type		:	ProgramScheduledBean
	- Throws			:  	UniversityException
	- Author			:	cg 
	- Creation Date		:	14/09/2018
	- Description		:	delete schedule for a program 
	 ********************************************************************************************************/ 

	@Override
	public ProgramScheduledBean deleteSchedule(String scheduledProgramID)
			throws UniversityException {
		ProgramScheduledBean programScheduledBean = entityManager.find(ProgramScheduledBean.class,scheduledProgramID);
		if(programScheduledBean == null)
			return null;
		else{
			
			
			TypedQuery<ApplicationBean> query=entityManager.createQuery(IQueryMapper.DELETE_PROGRAMS_SCHEDULED,ApplicationBean.class);
			query.setParameter("scheduleId", scheduledProgramID);
			 List<ApplicationBean> applicationList =query.getResultList();
			 System.out.println("size is "+ applicationList.size());
			 if(applicationList.size()>0){
				 return null;
			 }else{
				 entityManager.remove(programScheduledBean);
				 return programScheduledBean;
				 
			 }
		}
	}
	
	/************************************   VIEW PROGRAM SCHEDULE   *****************************************
 	- Function Name		:	viewSchedule(String scheduledProgramID)
	- Input Parameters	:	Date startDate, Date endDate
	- Return Type		:	List<ProgramScheduledBean>
	- Throws			:  	UniversityException
	- Author			:	cg 
	- Creation Date		:	14/09/2018
	- Description		:	Displays programs scheduled between startDate and endDate
	 ********************************************************************************************************/ 


	@Override
	public List<ProgramScheduledBean> viewSchedule(Date startDate, Date endDate)
			throws UniversityException {
		TypedQuery<ProgramScheduledBean> query = entityManager.createQuery(IQueryMapper.VIEW_SCHEDULE_BYDATE,ProgramScheduledBean.class);
		query.setParameter("startDate", startDate);
		query.setParameter("endDate", endDate);
		return query.getResultList();
	}
    
	/************************************   ADD PROGRAM SCHEDULE  *****************************************
 	- Function Name		:	addSchedule(ProgramScheduledBean programScheduledBean)
	- Input Parameters	:	ProgramScheduledBean programScheduledBean
	- Return Type		:	ProgramScheduledBean
	- Throws			:  	UniversityException
	- Author			:	cg 
	- Creation Date		:	14/09/2018
	- Description		:	add schedule for a program 
	 ********************************************************************************************************/ 
	
	@Override
	public ProgramScheduledBean addSchedule(ProgramScheduledBean programScheduledBean)throws UniversityException {
		entityManager.persist(programScheduledBean);
		entityManager.flush();
		return programScheduledBean;
	}
	
	/************************************   VIEW PROGRAMS SCHEDULE   *****************************************
 	- Function Name		:	viewProgramsScheduled()
	- Input Parameters	:	-
	- Return Type		:	List<ProgramScheduledBean>
	- Throws			:  	UniversityException
	- Author			:	cg 
	- Creation Date		:	14/09/2018
	- Description		:	Displays scheduled programs
	 ********************************************************************************************************/ 

	@Override
	public List<ProgramScheduledBean> viewProgramsScheduled() throws UniversityException {

		TypedQuery<ProgramScheduledBean> query=entityManager.createQuery(IQueryMapper.VIEW_PROGRAMS_SCHEDULED,ProgramScheduledBean.class);
		return query.getResultList();
	}
	
	
}
