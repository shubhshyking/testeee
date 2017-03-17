drop table XBBNHBH_RESULT;
drop table XBBNHBH_QUESTIONS;
drop table XBBNHBH_LOGIN;



CREATE TABLE XBBNHBH_LOGIN
(
UserID int NOT NULL PRIMARY KEY,
UserName varchar2(20) NOT NULL UNIQUE,
Email varchar2(30) NOT NULL UNIQUE,
Password varchar2(20) NOT NULL,
Role varchar2(10) DEFAULT 'USER'
);

CREATE TABLE XBBNHBH_QUESTIONS
(
QuestionID int NOT NULL PRIMARY KEY,
Question varchar2(500) NOT NULL,
Option1 varchar2(50) NOT NULL UNIQUE,
Option2 varchar2(50) NOT NULL UNIQUE,
Option3 varchar2(50) NOT NULL UNIQUE,
Option4 varchar2(50) NOT NULL UNIQUE,
Answer varchar2(50) NOT NULL UNIQUE,
Difficulty int DEFAULT 1
);

CREATE TABLE XBBNHBH_RESULT
(
TestID int NOT NULL PRIMARY KEY,
UserID int NOT NULL,
Marks int DEFAULT 0,

CONSTRAINT fk_uid_user FOREIGN KEY (UserID)
REFERENCES XBBNHBH_LOGIN(UserID)
);