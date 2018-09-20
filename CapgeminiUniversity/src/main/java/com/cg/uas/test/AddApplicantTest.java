package com.cg.uas.test;


import com.cg.uas.entities.ApplicationBean;
import com.cg.uas.exception.UniversityException;
import com.cg.uas.service.IApplicantService;

import junit.framework.TestCase;

public class AddApplicantTest extends TestCase {

	static IApplicantService service = null;
	static ApplicationBean bean = null;
	static ApplicationBean appicationBean = null;
	
	protected void setUp() throws Exception {
		super.setUp();
		/*String asd = "09-09-2000"
		Date dob =  //.parse(asd);
		bean.setDateOfBirth(dob);
		*/bean.setEmailID("test@gmail.com");
		bean.setFullName("Test Applicant");
		bean.setGoals("MBA");
		bean.setHighestQualification("Bachlors");
		bean.setMarksObtained(90);
		bean.setScheduledProgramID("1001");
		
	}

	protected void tearDown() throws Exception {
		super.tearDown();
	}

	public void testAddApplicant() {
			try {
				appicationBean = service.addApplicant(bean);
				System.out.println("applicant bean is " + appicationBean);
			} catch (UniversityException e) {
				System.err.println("Error occured in applying program test");
			}
			
			assertNull(appicationBean);
		}
	}


