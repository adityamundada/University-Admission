package com.cg.uas.entities;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.Range;
import org.springframework.format.annotation.NumberFormat;

@Entity
@Table(name="Application")
public class ApplicationBean {
	@Id
	@Column(name="Application_id")
	@SequenceGenerator(name="applicationseq", sequenceName="application_seq",allocationSize=1)
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="applicationseq")
	
	private Integer applicationId;
	
	
	@Column(name="full_name")
	@Pattern(regexp="[A-Za-z\\s]{1,20}", message="Please enter your valid Full Name in alphabets maximum 20 characters")
	@NotEmpty(message = "Please enter your full name.")
	private String fullName;
	
	
	//@Temporal(TemporalType.DATE)
	@Column(name="date_of_birth")
	//@DateTimeFormat(pattern="dd/MM/yyyy")
	@NotNull(message = "Field cannot be empty")
	private Date dateOfBirth;
	
	
	@Column(name="highest_qualification")
	@NotEmpty(message = "Please enter your highest qualification.")
	@Pattern(regexp="^[0-9a-zA-Z_ /.]*$", message="Please enter a valid Qualification")
	@Size(min=1,max=10)
	private String highestQualification;
	
	

	@Column(name="marks_obtained")
	@NumberFormat(pattern = "[1-9]")
	//@Pattern(regexp="[0-9]{1,3}", message="Marks should be numerical")
	@NotNull(message = "Field cannot be empty!!")
	@Range(min = 1, max = 100, message = "Marks should be in range 1-100")
	private Integer marksObtained;
	
	
	
	@Column(name="goals")
	@NotEmpty(message = "Please enter your goals.")
	@Pattern(regexp="^[0-9a-zA-Z_ /.]*$", message="Please enter a valid Goals")
	@Size(min=1,max=20)
	private String goals;
	
	
/*	@Email*/
	@Pattern(regexp="[a-z0-9._%+-]+@[a-z0-9.-]+.[a-z]{2,3}$" , message="Please enter a valid emailId")
	@NotEmpty(message = "Please enter your email addresss.")
	@Column(name="email_id")
	@Size(min=1,max=20)
	private String emailID;
	
	@Column(name="Scheduled_program_id")
	@NotEmpty(message = "Please select an Scheduled Program Id.")
	private String scheduledProgramID;
	
	@Column(name="status")
	private String status;
	
	
	
	//@Temporal(TemporalType.DATE)
	@Column(name="Date_Of_Interview")
	//@DateTimeFormat(pattern="dd/MM/yyyy")
	private Date dateOfInterview;
	
	public int getApplicationId() {
		return applicationId;
	}
	
	/*
	 * Getters And Setters Methods
	 */
	public void setApplicationId(Integer applicationId) {
		this.applicationId = applicationId;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public Date getDateOfBirth() {
		return dateOfBirth;
	}
	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	public String getHighestQualification() {
		return highestQualification;
	}
	public void setHighestQualification(String highestQualification) {
		this.highestQualification = highestQualification;
	}
	public Integer getMarksObtained() {
		return marksObtained;
	}
	public void setMarksObtained(Integer marksObtained) {
		this.marksObtained = marksObtained;
	}
	public String getGoals() {
		return goals;
	}
	public void setGoals(String goals) {
		this.goals = goals;
	}
	public String getEmailID() {
		return emailID;
	}
	@Override
	public String toString() {
		return "ApplicationBean [applicationId=" + applicationId
				+ ", fullName=" + fullName + ", dateOfBirth=" + dateOfBirth
				+ ", highestQualification=" + highestQualification
				+ ", marksObtained=" + marksObtained + ", goals=" + goals
				+ ", emailID=" + emailID + ", scheduledProgramID="
				+ scheduledProgramID + ", status=" + status
				+ ", dateOfInterview=" + dateOfInterview + "]";
	}

	public void setEmailID(String emailID) {
		this.emailID = emailID;
	}
	public String getScheduledProgramID() {
		return scheduledProgramID;
	}
	public void setScheduledProgramID(String scheduledProgramID) {
		this.scheduledProgramID = scheduledProgramID;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Date getDateOfInterview() {
		return dateOfInterview;
	}
	public void setDateOfInterview(Date dateOfInterview) {
		this.dateOfInterview = dateOfInterview;
	}
	
	
	
}
