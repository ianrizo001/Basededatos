# Diccionario de la base de datos de control escolar

1. Informacion general 

| Elemento | Valor |
| :--- | :--- |
| Proyecto  | Control escolar |
| Version | 1.0|
| Fecha | Junio 2026|
| Elaboro | Gerardo Emmanuel Guerrero Cerón |
| SGBD | SQL Server |


2. Descripcion del Sistema de Base de Datos 

El sistema administra:
-Carreras
-Alumnos
-Profesores
-Materias
-Grupos
-Insgripciones

Permite controlar la oferta academica y la inscripcion de estudiantes.


3. Catalogo de restricciones utilizadas

| Código | Significado |
| :--- | :--- |
| PK | Primary Key |
| FK | Foreing |
| NN | NOT NULL |
| UQ | UNIQUE |
| AI | Auto Increment |
| CK | Check |
| DF | Default |


4. Diccionario de Datos.

## Tabla: Carrera      

**Descripcion**
Almacena las carreras ofertadas por las carreras de la universidad

| Campo | Tipo | Longitud | Restricciones | Descripcion |
| :--- | :--- | :--- | :--- | :--- |
| id_carrera | INT | - | PK, AI , NN | Identificador unico de la carrera |
| nombre | VARCHAR | 100 | UQ,NN | Nombre de la carrera |
| nuracion_cuatrimestre | INT | - | NN, CK(=0) | Duracion de la carrera |


--


## Tabla: Alumno

**Descripcion**
Almacena informacion de los estudiantes

| Campo | Tipo | Longitud | Restricciones | Descripcion |
| :--- | :--- | :--- | :--- | :--- |
| id_alumno | INT | - | PK, AI , NN | Identificador unico del alumno |
| matricula | VARCHAR | 10 | UQ,NN | Matricula institucional |
| nombre | VARCHAR | 30 | NN | Nombre del alumno |
| apellido_paterno | VARCHAR | 50 | NN | Apellido paterno |
| apellido_materno | VARCHAR | 50 | NN | Apellido paterno |
| correo | VARCHAR | 100 | UQ, NN | Fecha de nacimiento |
| id_carrera | INT | - | FK, NN | Carrera a la pertenece |

--


5. Relaciones en la Base de Datos 

| Relacion | Cardinalidad | Descripcion |
| :--- | :--- | :--- |
| Carrera - Alumno | 1:N | Una carrera tiene  muchos alumnos |
| Carrera - Materia | 1:N | Una carrera tiene  muchas materias |
| Profesor - Grupo | 1:N | Un profesor puede impartir varios grupos |
| Materia - Grupo | 1:N | Una materia puede abrirse en varios grupos|
| Alumno - Inscricion | 1:N | Un alumno puede tener varias inscripciones |
| Grupo  - Inscripcion | 1:N | Un grupo puede tener muchs alumno |


6. Matriz de Claves Foraneas

| Tabla | Campo FK | Referencia |
| :--- | :--- | :--- |
| Alumno | id_carrera | Carrera(id_carrera) |
| Materia | id_carrera | Carrera(id_carrera) |
| Grupo | id_profesor | Profesor(id_profesor) |
| Grupo | id_materia | Materia(id_materia) |
| Inscripcion | id_alumno | Alumno(id_alumno) |
| Inscripcion | id_grupo | Grupo(id_grupo) |


7. Identidad difernecia

//Lo que permite la FK
| Codigo | Regla |
| :--- | :--- |
| IR-01 | No se puede registrar un alumno con una carrera inexistente |
| IR-02 | No se puede crear un grupo para una materia inexistente |
| IR-03 | No se puede crear un grupo para un profesor inexistente |
| IR-04 | No se puede inscribir un alumno en un grupo inexistente |
| IR-05 | No se puede eliminar una carrera que tenga alumnos asociados sin antes reasignar o eliminarlos |


8. Reglas del negocio 


| Codigo | Regla |
| :--- | :--- |
| RN-01 | Un alumno pertenece a una sola carrera |
| RN-02 | Una carrera puede tener muchos alumnos |
| RN-03 | Una carrera puede tener muchas materias |
| RN-04 | Un profesor puede impartir varios grupos |
| RN-05 | Un grupo solo puede tener un profesor asignado |
| RN-06 | La calificacion debe estar entre 0.0 y 10.0 |

9. Diagrama relacional 
![Control Escolar](../img/Relacional/Ejercicio1.jpg)