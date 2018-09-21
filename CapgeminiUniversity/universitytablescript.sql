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
	ProgramName VARCHAR2(5), 
	description VARCHAR2(20),
	applicant_eligibility VARCHAR2(40),
	duration NUMBER,
	degree_certificate_offered VARCHAR2(10)
);


CREATE TABLE Programs_Scheduled (
	Scheduled_program_id VARCHAR2(5),
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


INSERT INTO Application(Application_id, full_name, date_of_birth, highest_qualification, marks_obtained, goals, email_id, scheduled_program_id) VALUES(applicationid_seq.NEXTVAL, 'Sergio Aguero', TO_DATE('02/11/1992', 'DD/MM/YYYY'), 'Masters', 98, 'Promotion', 'aguero@hotmail.com', '9000');
INSERT INTO Application(Application_id, full_name, date_of_birth, highest_qualification, marks_obtained, goals, email_id, scheduled_program_id) VALUES(applicationid_seq.NEXTVAL, 'David Silva', TO_DATE('06/12/1990', 'DD/MM/YYYY'), 'Bachelors', 87, 'Contribute well', 'silva@yahoo.com', '9000');
INSERT INTO Application(Application_id, full_name, date_of_birth, highest_qualification, marks_obtained, goals, email_id, scheduled_program_id) VALUES(applicationid_seq.NEXTVAL, 'Kevin De Bruyne', TO_DATE('31/01/1991', 'DD/MM/YYYY'), 'PhD', 99, 'Learn and adapt', 'kevin17@gmail.com', '9000');
INSERT INTO Application(Application_id, full_name, date_of_birth, highest_qualification, marks_obtained, goals, email_id, scheduled_program_id) VALUES(applicationid_seq.NEXTVAL, 'Kyle Walker', TO_DATE('10/10/1989', 'DD/MM/YYYY'), 'BCom', 85, 'Work hard', 'kyle.10@gmail.com', '9050');
INSERT INTO Application(Application_id, full_name, date_of_birth, highest_qualification, marks_obtained, goals, email_id, scheduled_program_id) VALUES(applicationid_seq.NEXTVAL, 'Leroy Sane', TO_DATE('31/01/1991', 'DD/MM/YYYY'), 'BBA', 86, 'Grow with company', 'leroysane@yahoo.com', '9050');
INSERT INTO Application(Application_id, full_name, date_of_birth, highest_qualification, marks_obtained, goals, email_id, scheduled_program_id) VALUES(applicationid_seq.NEXTVAL, 'Raheem Sterling', TO_DATE('07/07/1988', 'DD/MM/YYYY'), 'Masters', 80, 'Promotion', 'rah7st@hotmail.com', '9050');
INSERT INTO Application(Application_id, full_name, date_of_birth, highest_qualification, marks_obtained, goals, email_id, scheduled_program_id) VALUES(applicationid_seq.NEXTVAL, 'Riyad Mahrez', TO_DATE('03/05/1985', 'DD/MM/YYYY'), 'MBA', 79, 'Learn and adapt', 'riyad.mah@gmail.com', '9100');
INSERT INTO Application(Application_id, full_name, date_of_birth, highest_qualification, marks_obtained, goals, email_id, scheduled_program_id) VALUES(applicationid_seq.NEXTVAL, 'Fernandinho', TO_DATE('30/06/1986', 'DD/MM/YYYY'), 'Bachelors', 79, 'Work hard', 'ferna386@yahoo.com', '9100');
INSERT INTO Application(Application_id, full_name, date_of_birth, highest_qualification, marks_obtained, goals, email_id, scheduled_program_id) VALUES(applicationid_seq.NEXTVAL, 'Ederson Moraes', TO_DATE('05/07/1987', 'DD/MM/YYYY'), 'MBA', 87, 'Give my best', 'ederson05@gmail.com', '9150');
INSERT INTO Application(Application_id, full_name, date_of_birth, highest_qualification, marks_obtained, goals, email_id, scheduled_program_id) VALUES(applicationid_seq.NEXTVAL, 'Bernardo Silva', TO_DATE('04/08/1988', 'DD/MM/YYYY'), 'MBA', 89, 'Earn promotion', 'bernsilva@gmail.com', '9150');

INSERT INTO Programs_Offered VALUES('AI', 'Learn about AI', 'Graduates and postgraduates', 6, 'AI cert');   
INSERT INTO Programs_Offered VALUES('ADBMS', 'Databases in depth', 'PhD', 3, 'ADBMSCP');   
INSERT INTO Programs_Offered VALUES('ML', 'Machine Learning', 'Engineers', 5, 'ML cert');
INSERT INTO Programs_Offered VALUES('STOCK', 'Stock market indepth', 'MBA', 4, 'STOCKCP');

INSERT INTO Programs_Scheduled VALUES('9000', 'AI', 'Bangalore', TO_DATE('12/12/2018', 'DD/MM/YYYY'), TO_DATE('12/06/2019', 'DD/MM/YYYY'), 4);   
INSERT INTO Programs_Scheduled VALUES('9050', 'ADBMS', 'Pune', TO_DATE('01/01/2018', 'DD/MM/YYYY'), TO_DATE('01/04/2019', 'DD/MM/YYYY'), 6);   
INSERT INTO Programs_Scheduled VALUES('9100', 'ML', 'Chennai', TO_DATE('02/02/2018', 'DD/MM/YYYY'), TO_DATE('02/07/2019', 'DD/MM/YYYY'), 5); 

INSERT INTO  Users VALUES('mac', 'mac', 'mac'); 
INSERT INTO  Users VALUES('admin', 'admin', 'admin'); 

commit;