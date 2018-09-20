package com.cg.uas.dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.transaction.Transactional;
import org.springframework.stereotype.Repository;
import com.cg.uas.entities.ApplicationBean;
import com.cg.uas.entities.LoginBean;
import com.cg.uas.entities.ProgramScheduledBean;
import com.cg.uas.exception.UniversityException;

@Repository
@Transactional

public class ApplicantDaoImpl implements IApplicantDao {
	@PersistenceContext
	EntityManager entityManager;
	
	/**********************************ADD APPLICANT**********************************************
	 *
	 * Method Name:             addApplicant
	 * Method Return Type:      ApplicationBean
	 * Input Parameter:         ApplicationBean applicant
	 * Throws Exception:        UniversityException
	 * Description:             add applicant details to application table given in the database
	 *
	 **************************************************************************************************/ 
	
	@Override
	public ApplicationBean addApplicant(ApplicationBean applicant) throws UniversityException {
		applicant.setStatus("APPLIED");
		entityManager.persist(applicant);
		entityManager.flush();
		return applicant;
	}
	
	/**********************************VIEW APPLICATION STATUS************************************************************
	 *
	 * Method Name:               viewStatusById
	 * Method Return Type:        ApplicationBean 
	 * Input Parameter:           Integer appId
	 * Throws Exception:          UniversityException
	 * Description:               Return application status and date of interview after fetching from application
	                              table based on application id.
	 
	 *************************************************************************************************************/

	@Override
	public ApplicationBean viewStatusById(Integer appid) throws UniversityException {
		ApplicationBean app = entityManager.find(ApplicationBean.class, appid);
		return app;
	}

	/************************************LOGIN CREDENTIAL VALIDATION************************************************
	 * 
	 * Method Name:                  checkuser(LoginBean l)
	 * Method Input Parameter:       LoginBean l
	 * Return Parameter:             String 
	 * Throws Exception:             UniversityException
	 * Description:                  Check the existing login id and password from the database if it exists then 
	 *                               return the role from the particular row.
	 * ************************************************************************************************************/
	
	@Override
	public String checkuser(LoginBean l) throws UniversityException {
		LoginBean login = entityManager.find(LoginBean.class,l.getUserName());
						
		
		if(login==null){
			throw new UniversityException("THIS USER LOGIN ID DOESN'T EXISTS");
			}
		
		else{
			
			if(l.getPassword().equals(login.getPassword())){
				return login.getRole();}
				else
					return "null";
				
			}
		}

	/********************************** VIEW ALL SCHEDULED PROGRAMS **********************************************
	 *
	 * Method Name:               viewAllScheduledProgram
	 * Method Return Type:        List<ProgramScheduledBean>
	 * Input Parameter:           No input parameter
	 * Throws Exception:          UniversityException
	 * Description:               returns all scheduled programs details from the database.
	 *
	 **************************************************************************************************/  
	
	@Override
	public List<ProgramScheduledBean> viewAllScheduledProgram() throws UniversityException {
		TypedQuery<ProgramScheduledBean> query = entityManager.createQuery(IQueryMapper.VIEW_SCHEDULED_PROGRAMS, ProgramScheduledBean.class);
		List<ProgramScheduledBean> list = query.getResultList();
		return list;
	}

	
	}


