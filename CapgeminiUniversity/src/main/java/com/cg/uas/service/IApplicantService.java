package com.cg.uas.service;

import java.util.List;



import com.cg.uas.entities.ApplicationBean;
import com.cg.uas.entities.LoginBean;
import com.cg.uas.entities.ProgramOfferedBean;
import com.cg.uas.entities.ProgramScheduledBean;
import com.cg.uas.exception.UniversityException;

	public interface IApplicantService {
		
	
		public ApplicationBean addApplicant(ApplicationBean applicant) throws UniversityException;

		
		public List<ProgramScheduledBean> viewAllScheduledProgram() throws UniversityException;

       
		public String checkuser(LoginBean l) throws UniversityException;

		public ApplicationBean viewStatusById(Integer appid) throws UniversityException;

	}



