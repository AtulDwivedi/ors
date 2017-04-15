CREATE TABLE temp_data (
  cand_id varchar2(30),
  ques_no number(3),
  ques varchar2(4000),
  optn1 varchar2(2000),
  optn2 varchar2(2000),
  optn3 varchar2(2000),
  optn4 varchar2(2000),
  ans varchar2(2000)
)
/
CREATE TABLE compdetail (
  username varchar2(30),
  name varchar2(30),
  addr varchar2(90),
  poat varchar2(30),
  criteria varchar2(30),
  email varchar2(50),
  contact number(15),
  cutoff number(4)
)
/
CREATE TABLE exam (
  job_id number(10),
  post varchar2(30),
  exam_id number(10),
  exam_name varchar2(30),
  cutoff number(3),
  comp_name varchar2(40)
)
/
CREATE TABLE exam_result (
  cand_id varchar2(30),
  exam_id number(10),
  job_id number(10),
  marks number(3),
  status varchar2(30)
)
/
CREATE TABLE jobdetail (
  job_id number(10),
  post varchar2(30),
  criteria varchar2(30),
  vacancies number(10),
  salary number(10),
  last_Date date,
  name varchar2(2000)
)
/
CREATE TABLE questions (
  job_id number(10),
  exam_id number(10),
  ques_no number(3),
  ques varchar2(4000),
  optn1 varchar2(2000),
  optn2 varchar2(2000),
  optn3 varchar2(2000),
  optn4 varchar2(2000),
  ans varchar2(2000)
)
/
CREATE TABLE login (
  username varchar2(50) PRIMARY KEY,
  password varchar2(50),
  status varchar(10)
)
/
CREATE TABLE studentregister (
  username varchar2(50),
  name varchar2(20),
  gender varchar(10),
  dob date,
  collname varchar2(60),
  collphone number(15),
  email varchar2(50),
  branch varchar2(50),
  marks number(3),
  degree varchar2(20),
  emailid varchar2(90),
  telephone number(15),
  addr varchar2(100),
  states varchar2(20),
  pincode number(6),
  category varchar2(20)
)
/
CREATE TABLE companyregister (
  username varchar2(50),
  name varchar2(50),
  addr varchar(90),
  post varchar2(30),
  criteria varchar2(50),
  email varchar2(50),
  contact number(15),
  cutoff number(3)
)
/
CREATE TABLE experienced (
  username varchar2(50),
  expyear number(3),
  company varchar2(20),
  designation varchar2(20),
  salary number(10),
  compaddr varchar2(50)
)
/
CREATE TABLE ORS_CANDIDATE (
  USERNAME varchar(50),
  NAME varchar(50),
  GENDER varchar(10),
  DOB varchar(50),
  IS_EXPERIENCED BOOLEAN
)
/
CREATE TABLE ORS_CONTACT (
  USERNAME varchar(50),
  EMAIL_ID varchar(50),
  MOBILE_NUMBER NUMBER(15),
  TELEPHONE_NUMBER NUMBER(15),
  CONTACT_TYPE varchar(50)
)
/
CREATE TABLE ORS_ADDRESS (
  USERNAME varchar(50),
  ADDRESS_LINE1 varchar,
  ADDRESS_LINE2 varchar,
  CITY varchar,
  STATE varchar,
  COUNTRY varchar,
  PIN_CODE NUMBER,
  LAND_MARK varchar,
  ADDRESS_TYPE varchar
)
/
CREATE TABLE ORS_EDUCATION (
  USERNAME varchar(50),
  COLLEGE_NAME varchar(50),
  BRANCH varchar(20),
  EDUCATION_LEVEL varchar(20),
  MARKS NUMBER(3),
  START_YEAR NUMBER(4),
  END_YEAR NUMBER(4)
)
/
CREATE TABLE ORS_EXPERIENCE (
  USERNAME varchar(50),
  COMPANY_NAME varchar(50),
  DESIGNATION varchar(20),
  START_YEAR NUMBER(4),
  END_YEAR NUMBER(4),
  IS_PRESENT_COMPANY BOOLEAN,
  TOTAL_YEARS_OF_EXPERIENCE NUMBER(3)
)
/
stop