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

/*
Departamento(id, nombre, numero, telefono, oficina)
	PK(id)
*/

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
PK(Matrícula, curp)					Grado 		9
FK(pertenece) references Departamento(iD)		FK		1

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


create table TakeCourse(
	cID varchar(20) Not Null,
	cUPRC varchar(20) Not Null,
	cNumber varchar(5) Not Null,
	cNote varchar(2) Not Null,
	cHistory varchar(25) Not Null,
	primary key()
)