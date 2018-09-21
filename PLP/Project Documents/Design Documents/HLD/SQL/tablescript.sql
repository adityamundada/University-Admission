DROP TABLE Application CASCADE CONSTRAINTS;

DROP TABLE Programs_Offered CASCADE CONSTRAINTS;

DROP TABLE Programs_Scheduled CASCADE CONSTRAINTS;

DROP TABLE Participant CASCADE CONSTRAINTS;

DROP TABLE Users CASCADE CONSTRAINTS;

CREATE TABLE Application (
	Application_id NUMBER, 
	full_name VARCHAR2(20), 
	date_of_birth DATE, 
	highest_qualification VARCHAR2(10),
	marks_obtained NUMBER, 
	goals VARCHAR2(20), 
	email_id VARCHAR2(20), 
	Scheduled_program_id VARCHAR2(5),
	status VARCHAR2(10) DEFAULT 'APPLIED',
	Date_Of_Interview DATE DEFAULT NULL,
	CONSTRAINT pk_applicationid PRIMARY KEY (Application_id)
);

CREATE TABLE Programs_Offered (
	ProgramName VARCHAR2(5) PRIMARY KEY, 
	description VARCHAR2(20),
	applicant_eligibility VARCHAR2(40),
	duration NUMBER,
	degree_certificate_offered VARCHAR2(10)
);

CREATE TABLE Programs_Scheduled (
	Scheduled_program_id VARCHAR2(5) PRIMARY KEY,
	ProgramName VARCHAR2(5), 
	Location VARCHAR2(10), 
	start_date DATE, 
	end_date DATE, 
	sessions_per_week NUMBER
);

CREATE TABLE Participant (
	Roll_no VARCHAR2(5), 
	email_id VARCHAR2(20), 
	Application_id NUMBER, 
	Scheduled_program_id VARCHAR2(5),
	CONSTRAINT fk_applicationid FOREIGN KEY (Application_id) REFERENCES Application(Application_id)
);

CREATE TABLE Users (
	login_id VARCHAR2(5), 
	password VARCHAR2(10), 
	role VARCHAR2(5)
);	

DROP SEQUENCE applicationid_seq;

DROP SEQUENCE rollnumber_seq;

CREATE SEQUENCE applicationid_seq
START WITH 5000
INCREMENT BY 1;

CREATE SEQUENCE rollnumber_seq
START WITH 15450
INCREMENT BY 1;



INSERT INTO  Users VALUES('mac', 'mac', 'mac'); 
INSERT INTO  Users VALUES('admin', 'admin', 'admin'); 

commit;
