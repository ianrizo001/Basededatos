# Diccionario de la base de datos de control escolar

1. Informacion general

| Elemento | Valor |
| :--- | :--- |
| Proyecto | Control escolar |
| Version | 1.0 |
| Fecha | Junio 2026 |
| Elaboro | Ian Uriel Rizo Zuñiga |
| SGBD | SQL Server |


2. Descripcion del Sistema de Base de Datos

El sistema administra:
-Alumnos
-Telefonos
-Credenciales
-Materias
-Cursos
-Profesores
-Departamentos
-Proyectos
-Participaciones
-Dependientes

Permite controlar la informacion academica de los alumnos, la asignacion de materias, los profesores, departamentos, proyectos y los dependientes de los profesores.


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

## Tabla: Alumno

**Descripcion**
Almacena la informacion de los alumnos.

| Campo | Tipo | Longitud | Restricciones | Descripcion |
| :--- | :--- | :--- | :--- | :--- |
| Matricula | VARCHAR | 15 | PK, NN | Identificador unico del alumno |
| Nombre | VARCHAR | 50 | NN | Nombre del alumno |
| Apellido1 | VARCHAR | 50 | NN | Apellido paterno del alumno |
| Apellido2 | VARCHAR | 50 | NN | Apellido materno del alumno |
| Correro | VARCHAR | 100 | UQ, NN | Correo electronico del alumno |
| Fechanaci | DATE | - | NN | Fecha de nacimiento del alumno |

--


## Tabla: Telefono

**Descripcion**
Almacena los telefonos registrados por los alumnos.

| Campo | Tipo | Longitud | Restricciones | Descripcion |
| :--- | :--- | :--- | :--- | :--- |
| Telefonoid | INT | - | PK, AI , NN | Identificador unico del telefono |
| Matricula | VARCHAR | 15 | FK, NN | Alumno al que pertenece el telefono |
| Numtotal | VARCHAR | 15 | NN | Numero telefonico del alumno |

--


## Tabla: Credencial

**Descripcion**
Almacena la informacion de la credencial de cada alumno.

| Campo | Tipo | Longitud | Restricciones | Descripcion |
| :--- | :--- | :--- | :--- | :--- |
| Numerocredencial | INT | - | PK, AI , NN | Identificador unico de la credencial |
| Fechainscripcion | DATE | - | NN | Fecha de inscripcion |
| Vigencia | DATE | - | NN | Fecha de vigencia de la credencial |
| Matricula | VARCHAR | 15 | FK, UQ, NN | Alumno al que pertenece la credencial |

--


## Tabla: Materia

**Descripcion**
Almacena la informacion de las materias.

| Campo | Tipo | Longitud | Restricciones | Descripcion |
| :--- | :--- | :--- | :--- | :--- |
| Clavemate | INT | - | PK, AI , NN | Identificador unico de la materia |
| Nombremateria | VARCHAR | 100 | NN | Nombre de la materia |
| Creditos | INT | - | NN, CK(>=0) | Creditos de la materia |
| Numeroprofe | INT | - | FK, NN | Profesor que imparte la materia |

--


## Tabla: Curso

**Descripcion**
Almacena las inscripciones de los alumnos en las materias.

| Campo | Tipo | Longitud | Restricciones | Descripcion |
| :--- | :--- | :--- | :--- | :--- |
| Clavemate | INT | - | PK, FK, NN | Materia inscrita |
| Matricula | VARCHAR | 15 | PK, FK, NN | Alumno inscrito |
| Fechainscripcion | DATE | - | NN | Fecha de inscripcion |
| Califinal | DECIMAL | 4,2 | NN, CK(>=0 AND <=10) | Calificacion final |

--


## Tabla: Profesor

**Descripcion**
Almacena la informacion de los profesores.

| Campo | Tipo | Longitud | Restricciones | Descripcion |
| :--- | :--- | :--- | :--- | :--- |
| Numeroprof | INT | - | PK, AI , NN | Identificador unico del profesor |
| Nombre | VARCHAR | 50 | NN | Nombre del profesor |
| Apellido1 | VARCHAR | 50 | NN | Apellido paterno |
| Apellodo2 | VARCHAR | 50 | NN | Apellido materno |
| Numerodepto | INT | - | FK, NN | Departamento al que pertenece |

--


## Tabla: Departamento

**Descripcion**
Almacena la informacion de los departamentos.

| Campo | Tipo | Longitud | Restricciones | Descripcion |
| :--- | :--- | :--- | :--- | :--- |
| Numerodepto | INT | - | PK, AI , NN | Identificador unico del departamento |
| Nombredepto | VARCHAR | 100 | NN | Nombre del departamento |
| Edificio | VARCHAR | 50 | NN | Edificio donde se encuentra |

--


## Tabla: Proyecto

**Descripcion**
Almacena la informacion de los proyectos.

| Campo | Tipo | Longitud | Restricciones | Descripcion |
| :--- | :--- | :--- | :--- | :--- |
| Numeroproj | INT | - | PK, AI , NN | Identificador unico del proyecto |
| Nombre | VARCHAR | 100 | NN | Nombre del proyecto |
| Presupuesto | DECIMAL | 12,2 | NN, CK(>=0) | Presupuesto asignado |

--


## Tabla: Participar

**Descripcion**
Almacena la participacion de profesores en proyectos.

| Campo | Tipo | Longitud | Restricciones | Descripcion |
| :--- | :--- | :--- | :--- | :--- |
| Numeroproj | INT | - | PK, FK, NN | Proyecto asignado |
| Numeroprof | INT | - | PK, FK, NN | Profesor participante |
| Rol | VARCHAR | 50 | NN | Rol del profesor en el proyecto |
| Fechainicio | DATE | - | NN | Fecha de inicio de participacion |

--


## Tabla: Dependiente

**Descripcion**
Almacena la informacion de los dependientes de los profesores.

| Campo | Tipo | Longitud | Restricciones | Descripcion |
| :--- | :--- | :--- | :--- | :--- |
| Numeroprofe | INT | - | PK, FK, NN | Profesor al que pertenece |
| Nombre | VARCHAR | 100 | PK, NN | Nombre del dependiente |
| Fechanaci | DATE | - | NN | Fecha de nacimiento |
| Parentesco | VARCHAR | 30 | NN | Parentesco con el profesor |

--


5. Relaciones en la Base de Datos

| Relacion | Cardinalidad | Descripcion |
| :--- | :--- | :--- |
| Alumno - Telefono | 1:N | Un alumno puede tener varios telefonos |
| Alumno - Credencial | 1:1 | Un alumno tiene una sola credencial |
| Alumno - Curso | 1:N | Un alumno puede inscribirse en varios cursos |
| Materia - Curso | 1:N | Una materia puede tener muchos alumnos inscritos |
| Profesor - Materia | 1:N | Un profesor puede impartir varias materias |
| Departamento - Profesor | 1:N | Un departamento tiene varios profesores |
| Profesor - Dependiente | 1:N | Un profesor puede tener varios dependientes |
| Profesor - Participar | 1:N | Un profesor puede participar en varios proyectos |
| Proyecto - Participar | 1:N | Un proyecto puede tener varios profesores participantes |

6. Matriz de Claves Foraneas

| Tabla | Campo FK | Referencia |
| :--- | :--- | :--- |
| Telefono | Matricula | Alumno(Matricula) |
| Credencial | Matricula | Alumno(Matricula) |
| Curso | Matricula | Alumno(Matricula) |
| Curso | Clavemate | Materia(Clavemate) |
| Materia | Numeroprofe | Profesor(Numeroprof) |
| Profesor | Numerodepto | Departamento(Numerodepto) |
| Participar | Numeroprof | Profesor(Numeroprof) |
| Participar | Numeroproj | Proyecto(Numeroproj) |
| Dependiente | Numeroprofe | Profesor(Numeroprof) |

7. Identidad difernecia

//Lo que permite la FK

| Codigo | Regla |
| :--- | :--- |
| IR-01 | No se puede registrar un telefono para un alumno inexistente |
| IR-02 | No se puede registrar una credencial para un alumno inexistente |
| IR-03 | No se puede inscribir un alumno en una materia inexistente |
| IR-04 | No se puede registrar una materia con un profesor inexistente |
| IR-05 | No se puede registrar un profesor en un departamento inexistente |
| IR-06 | No se puede registrar una participacion para un proyecto o profesor inexistente |
| IR-07 | No se puede registrar un dependiente para un profesor inexistente |

8. Reglas del negocio

| Codigo | Regla |
| :--- | :--- |
| RN-01 | Un alumno puede tener varios telefonos registrados |
| RN-02 | Un alumno solo puede tener una credencial vigente |
| RN-03 | Un alumno puede inscribirse en varias materias |
| RN-04 | Un profesor puede impartir varias materias |
| RN-05 | Un profesor pertenece a un solo departamento |
| RN-06 | Un profesor puede participar en varios proyectos |
| RN-07 | Un profesor puede tener varios dependientes |
| RN-08 | La calificacion final debe estar entre 0.0 y 10.0 |
| RN-09 | El presupuesto del proyecto debe ser mayor o igual a 0 |

9. Diagrama relacional

![Control Escolar](../img/Relacional/Ejercicio7.jpg)