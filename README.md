# TecDatabase
Base de Datos del TEC  Se requiere un sistema que permita consultar y actualizar los datos de los alumnos, departamentos, cursos y  profesores. Se requiere llevar un historial de los cursos que ha llevado un alumno y de los cursos que un profesor ha impartido.  Se requiere saber también los horarios en los que un profesor esta disponible (que no tiene clases)   

Considera lo siguiente (para algunas relaciones, puedes apoyarte de la actividad de University que hicimos cuando vimos ER):  Se sabe que el TEC tiene Alumnos. Los alumnos tienen una matricula única, un nombre, curp, dirección, teléfono, celular, fecha de nacimiento, sexo, carrera (ofrecida por un departamento).  

Cada departamento tiene un nombre, un numero, numero de oficina, teléfono.   

Cada curso tiene un numero, nombre, descripción, numero de horas a la semana, semestre (en el plan) y departamento que ofrece ese curso.   

Cada grupo tiene un semestre (AD, EM), año, numero de grupo y Profesor. El número de grupo distingue los grupos del mismo curso que se abren en el mismo semestre y año.  Cada estudiante tiene una calificación del 0-100 en cada materia que lleva.  

Cada Profesor puede dar varios cursos. Se requiere llevar un historial de todos los cursos que ha dado y almacenar el resultado de las ECOAS.
