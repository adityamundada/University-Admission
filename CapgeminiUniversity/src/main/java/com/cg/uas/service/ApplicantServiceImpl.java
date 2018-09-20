package com.cg.uas.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cg.uas.dao.IApplicantDao;
import com.cg.uas.entities.ApplicationBean;
import com.cg.uas.entities.LoginBean;
import com.cg.uas.entities.ProgramScheduledBean;
import com.cg.uas.exception.UniversityException;


@Service
public class ApplicantServiceImpl implements IApplicantService {

	@Autowired
	private IApplicantDao dao;

	/* Add an Applicant */
	@Override
	public ApplicationBean addApplicant(ApplicationBean applicant) throws UniversityException {
		return dao.addApplicant(applicant);
	}
	
	/* View Status of Application */
	@Override
	public ApplicationBean viewStatusById(Integer appid) throws UniversityException {
		return dao.viewStatusById(appid);
	}
	
	/* Validates Login Credentials */
	@Override
	public String checkuser(LoginBean l) throws UniversityException {
		System.out.println("in service");
		return dao.checkuser(l);
	}
	
	/* View all scheduled programs */
	@Override
	public List<ProgramScheduledBean> viewAllScheduledProgram() throws UniversityException {
		return dao.viewAllScheduledProgram();
	}
	
	
}
