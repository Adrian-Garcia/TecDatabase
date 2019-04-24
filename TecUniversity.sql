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

create table Department(
    dId varchar(20) Not Null,
    dName varchar (50) Not Null,
    dNumber varchar(5) Not Null,
    dPhoneNumber varchar(20) Not Null,
    dOffice varchar(20) Not Null,
    primary key(dId)
)Engine=InnoDB;

create table Students(
    sID varchar(20) Not Null,
    sUPRC varchar(20) NOT Null, --UPRC == CURP
    sName varchar(25) Not Null,
    sAddress varchar(25)  Null, 
    sPhoneNumber varchar (20) Null, 
    sSex varchar (1) Null,  
    sBDate datetime(6) null, 
    sDepartment varchar(20) Not null, 
    sMajor varchar(20) Not Null,
    primary key(sID, UPRC), 
    foreign key(sDepartment) references Department(dId)
)Engine=InnoDB;

CREATE TABLE Schedule(
    hId varchar(25) not null,
    hTime datetime(6) not null,
    primary key(hId)
)Engine=InnoDB;

CREATE TABLE Professor(
    pID varchar(20) Not Null,
    pUPRC varchar(20) NOT Null, --UPRC == CURP
    pName varchar(25) Not Null,
    pAddress varchar(25)  Null, 
    pPhoneNumber varchar (20) Null, 
    pSex varchar (1) Null,  
    pBDate datetime(6) null, 
    primary key(pID)
)Engine=InnoDB; 

CREATE TABLE ProfessorSchedule(
     pID varchar(20) Not Null,
     hId varchar(25) not null,
     primary key(pId, hId), 
     foreign key (pID) references Professor(pId),
     foreign key (hId) references Schedule(hId)
)Engine=InnoDB;