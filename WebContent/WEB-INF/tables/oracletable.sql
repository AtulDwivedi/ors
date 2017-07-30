create table temp_data(
cand_id varchar2(30),
ques_no number(3),
ques varchar2(4000),
optn1 varchar2(2000),
optn2 varchar2(2000),
optn3 varchar2(2000),
optn4 varchar2(2000),
ans varchar2(2000))
/
create table compdetail(
username varchar2(30),
name varchar2(30),
addr varchar2(90),
poat varchar2(30),
criteria varchar2(30),
email varchar2(50),
contact number(15),
cutoff number (4))
/
create table exam(
job_id number(10),
post varchar2(30),
exam_id number(10),
exam_name varchar2(30),
cutoff number(3),
comp_name varchar2(40))
/
create table exam_result(
cand_id varchar2(30),
exam_id number(10),
job_id number(10),
marks number(3),
status varchar2(30))
/
create table jobdetail(
job_id number(10),
post varchar2(30),
criteria varchar2(30),
vacancies number(10),
salary number(10),
last_Date date,
name varchar2(2000))
/
create table questions(
job_id number(10),
exam_id number(10),
ques_no number(3),
ques varchar2(4000),
optn1 varchar2(2000),
optn2 varchar2(2000),
optn3 varchar2(2000),
optn4 varchar2(2000),
ans varchar2(2000))
/
create table login (
username varchar2(50) primary key,
password varchar2(50),
status varchar(10))
/
insert into login values('atul',12345678,'admin')
/
create table studentregister(
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
category varchar2(20))
/
create table companyregister(
username varchar2(50),
name varchar2(50),
addr varchar(90),
post varchar2(30),
criteria varchar2(50),
email varchar2(50),
contact number(15),
cutoff number(3))
/
create table experienced(
username varchar2(50),
expyear number(3),
company varchar2(20), 
designation varchar2(20),
salary number(10),
compaddr varchar2(50))
/
CREATE TABLE ORS_CANDIDATE(USERNAME VARCHAR(50), NAME VARCHAR(50), GENDER VARCHAR(10), DOB VARCHAR(50), IS_EXPERIENCED BOOLEAN)
/
CREATE TABLE ORS_CONTACT(USERNAME VARCHAR(50), EMAIL_ID VARCHAR(50), MOBILE_NUMBER NUMBER(15), TELEPHONE_NUMBER NUMBER(15), CONTACT_TYPE VARCHAR(50))
/
CREATE TABLE ORS_ADDRESS (ADDRESS_LINE1 VARCHAR,  ADDRESS_LINE2 VARCHAR, CITY VARCHAR, STATE VARCHAR, COUNTRY VARCHAR, PIN_CODE NUMBER, LAND_MARK  VARCHAR, ADDRESS_TYPE VARCHAR)
/
CREATE TABLE ORS_EDUCATION (COLLEGE_NAME VARCHAR(50), BRANCH VARCHAR(20), EDUCATION_LEVEL VARCHAR(20), MARKS NUMBER(3), START_YEAR NUMBER(4), END_YEAR NUMBER(4))
/
CREATE TABLE ORS_EXPERIENCE (COMPANY_NAME VARCHAR(50), DESIGNATION VARCHAR(20), START_YEAR NUMBER(4), END_YEAR NUMBER(4), IS_PRESENT_COMPANY BOOLEAN, TOTAL_YEARS_OF_EXPERIENCE NUMBER(3))
/
stop
/