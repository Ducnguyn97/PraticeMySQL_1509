create database QuanLySinhVien;

use QuanLySinhVien;

create table class(
ClassID int not null primary key auto_increment,
className varchar(60) not null,
StartDate date not null,
Status bit
);

create table Student(
StudentID int not null auto_increment primary key,
StudentName varchar(30) not null,
Address varchar(50),
Phone varchar (20),
status bit,
classID int not null 
);

create table Subject1(
SubID int not null auto_increment primary key,
Subname varchar(30) not null,
Credit Tinyint not null default 1 check( Credit>=1),
Status bit default 1
 );
 
 create table Mark(
  MarkID int not null auto_increment primary key,
  SubID int not null,
  StudentID int not null,
  Mark float default 0 check ( Mark between 0 and 100),
  ExamTimes tinyint default 1,
  unique (SubId, StudentId),
  foreign key (SubID) references subject1 (SubID),
  foreign key (StudentID) references Student (StudentID)
 
 );
 
