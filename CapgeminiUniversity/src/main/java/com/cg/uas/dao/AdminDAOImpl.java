package com.cg.uas.dao;

import java.util.Date;
import java.util.List;




import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;

import com.cg.uas.entities.ApplicationBean;
import com.cg.uas.entities.ProgramOfferedBean;
import com.cg.uas.entities.ProgramScheduledBean;
import com.cg.uas.exception.UniversityException;


@Repository
public class AdminDAOImpl implements IAdminDAO{

	@PersistenceContext
	EntityManager entityManager;
	
	
	@Override
	public ProgramOfferedBean addProgramOffered(ProgramOfferedBean programOfferedBean) throws UniversityException {
	
		
		entityManager.persist(programOfferedBean);
		entityManager.flush();
		
		return programOfferedBean;
	}


	@Override
	public List<ProgramOfferedBean> viewProgramsOffered() throws UniversityException {

		TypedQuery<ProgramOfferedBean> query=entityManager.createQuery("select p from ProgramOfferedBean p",ProgramOfferedBean.class);
		return query.getResultList();
	}



	@Override
	public boolean updateOffered(ProgramOfferedBean bean)throws UniversityException {
		entityManager.merge(bean);

		return true;
	}


	@Override
	public ProgramOfferedBean findOffered(String name)throws UniversityException {
		ProgramOfferedBean bean = entityManager.find(
				ProgramOfferedBean.class, name);
		if (bean != null) {

			return bean;
		} else
			return null;
	}


	@Override
	public boolean deleteOffered(String name) throws UniversityException {
		// 
		ProgramOfferedBean bean = entityManager.find(ProgramOfferedBean.class, name);
		if (bean == null) {
			return false;
		}else{

			//ProgramScheduledBean scheduleBean = entityManager.find(ProgramScheduledBean.class, name);
			TypedQuery<ProgramScheduledBean> query=entityManager.createQuery("select p from ProgramScheduledBean p where p.programName =:programName  ",ProgramScheduledBean.class);
			query.setParameter("programName", name);
			List<ProgramScheduledBean> scheduleBean  =query.getResultList();
			if(scheduleBean.size()==0){
				//System.out.println(scheduleBean);
				entityManager.remove(bean);
				return true;
			}else{
				return false;
			
			}
				
		}
		
		
		
		
			
	}


	@Override
	public ProgramScheduledBean deleteSchedule(String scheduledProgramID)
			throws UniversityException {
		ProgramScheduledBean programScheduledBean = entityManager.find(ProgramScheduledBean.class,scheduledProgramID);
		if(programScheduledBean == null)
			return null;
		else{
			
			
			TypedQuery<ApplicationBean> query=entityManager.createQuery("select a from ApplicationBean a where a.scheduledProgramID =:scheduleId  ",ApplicationBean.class);
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


	@Override
	public List<ProgramScheduledBean> viewSchedule(Date startDate, Date endDate)
			throws UniversityException {
		TypedQuery<ProgramScheduledBean> query = entityManager.createQuery("SELECT p FROM ProgramScheduledBean p WHERE start_date >=:startDate AND end_date <=:endDate",ProgramScheduledBean.class);
		query.setParameter("startDate", startDate);
		query.setParameter("endDate", endDate);
		return query.getResultList();
	}


	@Override
	public ProgramScheduledBean addSchedule(ProgramScheduledBean programScheduledBean)throws UniversityException {
		entityManager.persist(programScheduledBean);
		entityManager.flush();
		return programScheduledBean;
	}

	@Override
	public List<ProgramScheduledBean> viewProgramsScheduled() throws UniversityException {

		TypedQuery<ProgramScheduledBean> query=entityManager.createQuery("select p from ProgramScheduledBean p",ProgramScheduledBean.class);
		return query.getResultList();
	}
	
	
}
