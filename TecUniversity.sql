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

/*
Alumnos(Matrícula, curp, nombre, dirección, teléfono, sexo, fechaDeNacimiento, pertenece, carrera)
PK(Matrícula, curp)									Grado		9
FK(pertenece) references Departamento(iD)			FK			1
*/
create table Students(
    sID varchar(20) Not Null,
    sUPRC varchar(20) Not Null, --UPRC == CURP
    sName varchar(25) Not Null,
    sAddress varchar(25)  Null, 
    sPhoneNumber varchar (20) Null, 
    sSex varchar (1) Null,  
    sBDate datetime(6) null, 
    sDepartment varchar(20) Not null, 
    sMajor varchar(20) Not Null,
    primary key(sID), 
    foreign key(sDepartment) references Departament(dId)
)Engine=InnoDB;

/*
Profesor(id    , horarioDisponible)
    PK(id)                            				Grado		1
	FK(tiene) references Curso(id)            		FK			2
	FK(tiene) references Grupo(número)
*/
CREATE TABLE Professor(
    pID varchar(20)
    pScheduleDisp DATETIME(6), --DUDA
    primary key (pID)
)Engine=InnoDB;

/*
TomaCurso(Matrícula, curp, número, calificación, historial)        
    PK(Matrícula, curp, número)                    	Grado		4
    FK(NúmeroGrupo) references Grupo(NúmeroGrupo)	FK        	2
    FK(NúmeroCurso) references Grupo(NúmeroCurso)
*/
create table TakeCourse(
	cID varchar(20) Not Null,
	cUPRC varchar(20) Not Null,
	cNumber varchar(5) Not Null,
	cNote varchar(2) Not Null,
	cHistory varchar(25) Not Null,
	primary key(cID)
)Engine=InnoDB;

/*
Grupo(Matricula, curp, ecoa, año, semestre, número)
    PK(número)                        				Grado		6
    FK(tiene) references Profesor(id)           	FK 			2
    FK(tiene) references Curso(número)
*/

/*
Curso(número, nombre, descripción, horas)
    PK(número)                        				Grado		1
    FK(ofrece) references Departamento(id)         	FK			3
*/