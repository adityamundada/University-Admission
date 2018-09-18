package com.cg.uas.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cg.uas.dao.IApplicantDao;
import com.cg.uas.entities.ApplicationBean;
import com.cg.uas.entities.LoginBean;
import com.cg.uas.entities.ProgramOfferedBean;
import com.cg.uas.entities.ProgramScheduledBean;
import com.cg.uas.exception.UniversityException;
@Service
public class ApplicantServiceImpl implements IApplicantService {
@Autowired
IApplicantDao dao;

	@Override
	public ApplicationBean addApplicant(ApplicationBean applicant)
			throws UniversityException {
		// TODO Auto-generated method stub
		return dao.addApplicant(applicant);
	}
	@Override
	public ApplicationBean viewStatusById(Integer appid) throws UniversityException {
		// TODO Auto-generated method stub
		return dao.viewStatusById(appid);
	}
	@Override
	public String checkuser(LoginBean l)
			throws UniversityException {
		// TODO Auto-generated method stub
		System.out.println("in service");
		return dao.checkuser(l);
	
	}
	@Override
	public List<ProgramScheduledBean> viewAllScheduledProgram()
			throws UniversityException {
		// TODO Auto-generated method stub
		return dao.viewAllScheduledProgram();
	}
	
	
}
