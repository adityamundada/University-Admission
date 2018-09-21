package com.cg.uas.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.Range;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.format.annotation.NumberFormat;

@Entity
@Table(name="programs_offered")

public class ProgramOfferedBean {

	
	@Id
	@Pattern(regexp="[A-Za-z]{1,5}", message="Please enter a valid Program Name (only alphabets, length 1-5)")
	@NotEmpty(message="Program Name is mandatory")
	@Column(name="PROGRAMNAME")
	private String programName;
	
	@NotEmpty(message="Description is mandatory")
	@Pattern(regexp="[A-Za-z0-9\\s]{2,20}", message="Please enter a valid description (only alphabets, length 2-20)")
	@Column(name="DESCRIPTION")
	private String description;
	
	@Column(name = "APPLICANT_ELIGIBILITY")	
	@Pattern(regexp = "[0-9A-Za-z\\s]{2,40}", message="Please enter a valid applicant eligibility (only alphabets, length 2-40)")
	@NotEmpty(message = "Applicant Eligibility is mandatory")
	private String applicantEligibility;
	
	@Column(name="DURATION")
	@NotNull(message = "Duration is mandatory")
	@Range(min = 1, max = 24, message = "Duration should be 1-24 months")
	private Integer duration;
	
	
	@Column(name="DEGREE_CERTIFICATE_OFFERED")
	@Pattern(regexp = "[A-Za-z\\s]{2,10}", message="Please enter a valid degree certificate offered(only alphabets, length 2-10)")
	@NotEmpty(message="Degree cerificate offered is mandatory")
	private String degreeCertificateOffered;
	
	
	
	
	public String getProgramName() {
		return programName;
	}
	public void setProgramName(String programName) {
		this.programName = programName;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getApplicantEligibility() {
		return applicantEligibility;
	}
	public void setApplicantEligibility(String applicantEligibility) {
		this.applicantEligibility = applicantEligibility;
	}
	public Integer getDuration() {
		return duration;
	}
	public void setDuration(Integer duration) {
		this.duration = duration;
	}
	public String getDegreeCertificateOffered() {
		return degreeCertificateOffered;
	}
	public void setDegreeCertificateOffered(String degreeCertificateOffered) {
		this.degreeCertificateOffered = degreeCertificateOffered;
	}
	@Override
	public String toString() {
		return "programName=" + programName + ", description="
				+ description + ", applicantEligibility="
				+ applicantEligibility + ", duration=" + duration
				+ ", degreeCertificateOffered=" + degreeCertificateOffered;
	}
	
	
	
}
