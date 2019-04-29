/*
    Tec Database 
    Creators:
    David A. Cantú Martínez 	A00822455
    Adrián García López 	    A01351166 
    Paola A. Villarreal García 	A00821971
    Luis Adrian Gartner López   A00227224
*/

--First line to create the database 
CREATE Database TecUniversity;
--Creating Tables 
CREATE TABLE Department(
    dId varchar(20) Not Null,
    dName varchar (50) Not Null,
    dNumber varchar(5) Not Null,
    dPhoneNumber varchar(20) Not Null,
    dOffice varchar(20) Not Null,
    primary key(dId)
)Engine=InnoDB;

CREATE TABLE Students(
    sID varchar(20) Not Null,
    sUPRC varchar(20) NOT Null, --UPRC == CURP
    sName varchar(25) Not Null,
    sAddress varchar(25)  Null, 
    sPhoneNumber varchar (20) Null, 
    sSex varchar (1) Null,  
    sBDate datetime(6) Null, 
    sDepartment varchar(20) Not Null, 
    sMajor varchar(20) Not Null,
    primary key(sID, UPRC), 
    foreign key(sDepartment) references Department(dId)
)Engine=InnoDB;

CREATE TABLE Schedule(
    hId varchar(25) Not Null,
    hTime datetime(6) Not Null,
    primary key(hId)
)Engine=InnoDB;

CREATE TABLE Professor(
    pID varchar(20) Not Null,
    pUPRC varchar(20) NOT Null, --UPRC == CURP
    pName varchar(25) Not Null,
    pAddress varchar(25)  Null, 
    pPhoneNumber varchar (20) Null, 
    pSex varchar (1) Null,  
    pBDate datetime(6) Null, 
    primary key(pID)
)Engine=InnoDB; 

CREATE TABLE ProfessorSchedule(
     pID varchar(20) Not Null,
     hId varchar(25) Not Null,
     primary key(pId, hId), 
     foreign key (pID) references Professor(pId),
     foreign key (hId) references Schedule(hId)
)Engine=InnoDB;

CREATE TABLE Course(
    cNumber varchar(20) Not Null,
    cName varchar(25) Not Null,
    cDescription varchar(25) Not Null, 
    cHours datetime(6) Not Null,
    dId varchar(20) Not Null,
    primary key(cNumber),
    foreign key(dId) references Department(dId)
)Engine=InnoDB;

CREATE TABLE Groupp(
    gId varchar(20) Not Null,
    gNumber varchar(20) Not Null,
    pID varchar(20) Not Null,
    cNumber varchar(20) Not Null,
    gEcoa varchar(20) Not Null, 
    gUPRC varchar(20) Not Null,
    gYear datetime(6) Not Null,
    gSemester varchar(20) Not Null,
    primary key(gNumber, gId, gUPRC),
    foreign key(pId) references Professor(pId),
    foreign key(cNumber) references Course(cNumber) 
)Engine=InnoDB;

create table TakeCourse(
	tcID varchar(20) Not Null,
	tcUPRC varchar(20) Not Null,
	tcGroupNumber varchar(5) Not Null,
    tcCourseNumber varchar(5) Not Null,
	tcGrade varchar(2) Not Null,
	tcHistory varchar(25) Not Null,
	primary key(tcID),
    foreign key(tcCourseNumber) references Course(cNumber),
    foreign key(tcGroupNumber) references Groupp(gNumber)
)Engine=InnoDB;
