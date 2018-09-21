package com.cg.uas.service;

import java.util.List;



import com.cg.uas.entities.ApplicationBean;
import com.cg.uas.entities.LoginBean;
import com.cg.uas.entities.ProgramScheduledBean;
import com.cg.uas.exception.UniversityException;

	public interface IApplicantService {
		/* Adds an Applicant */
		public ApplicationBean addApplicant(ApplicationBean applicant) throws UniversityException;
		
		/* View All Scheduled Program */
		public List<ProgramScheduledBean> viewAllScheduledProgram() throws UniversityException;
       
		/* Validates Login Credentials */
		public String checkuser(LoginBean l) throws UniversityException;

		/* View status of application */
		public ApplicationBean viewStatusById(Integer appid) throws UniversityException;

	}



