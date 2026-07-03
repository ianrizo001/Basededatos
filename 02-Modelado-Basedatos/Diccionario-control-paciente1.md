# Diccionario de la base de datos de control de pacientes

1. Informacion general

| Elemento | Valor |
| :--- | :--- |
| Proyecto | Control de pacientes |
| Version | 1.0 |
| Fecha | Junio 2026 |
| Elaboro | Gerardo Emmanuel Guerrero Cerón |
| SGBD | SQL Server |


2. Descripcion del Sistema de Base de Datos

El sistema administra:
-Pacientes
-Expedientes

Permite controlar el registro de pacientes y la administracion de sus expedientes medicos.


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

## Tabla: Paciente

**Descripcion**
Almacena la informacion general de los pacientes.

| Campo | Tipo | Longitud | Restricciones | Descripcion |
| :--- | :--- | :--- | :--- | :--- |
| Idpaciente | INT | - | PK, AI , NN | Identificador unico del paciente |
| Nombre | VARCHAR | 50 | NN | Nombre del paciente |
| Apellido1 | VARCHAR | 50 | NN | Apellido paterno del paciente |
| Apellido2 | VARCHAR | 50 | NN | Apellido materno del paciente |
| Fechanaci | DATE | - | NN | Fecha de nacimiento del paciente |

--


## Tabla: Expediente

**Descripcion**
Almacena la informacion del expediente medico de cada paciente.

| Campo | Tipo | Longitud | Restricciones | Descripcion |
| :--- | :--- | :--- | :--- | :--- |
| Idexp | INT | - | PK, AI , NN | Identificador unico del expediente |
| Fechaapetura | DATE | - | NN | Fecha de apertura del expediente |
| Tipodesangre | VARCHAR | 5 | NN | Tipo de sangre del paciente |
| Idpaciente | INT | - | FK, UQ, NN | Paciente al que pertenece el expediente |

--


5. Relaciones en la Base de Datos

| Relacion | Cardinalidad | Descripcion |
| :--- | :--- | :--- |
| Paciente - Expediente | 1:1 | Un paciente tiene un solo expediente medico |


6. Matriz de Claves Foraneas

| Tabla | Campo FK | Referencia |
| :--- | :--- | :--- |
| Expediente | Idpaciente | Paciente(Idpaciente) |


7. Identidad difernecia

//Lo que permite la FK

| Codigo | Regla |
| :--- | :--- |
| IR-01 | No se puede registrar un expediente con un paciente inexistente |
| IR-02 | No se puede eliminar un paciente que tenga un expediente asociado sin antes eliminar el expediente |
| IR-03 | Un expediente solo puede pertenecer a un paciente |


8. Reglas del negocio

| Codigo | Regla |
| :--- | :--- |
| RN-01 | Un paciente solo puede tener un expediente medico |
| RN-02 | Un expediente pertenece a un solo paciente |
| RN-03 | Todo expediente debe estar asociado a un paciente existente |
| RN-04 | La fecha de apertura del expediente debe ser igual o posterior a la fecha de nacimiento |
| RN-05 | El tipo de sangre debe ser un valor valido (A+, A-, B+, B-, AB+, AB-, O+, O-) |

9. Diagrama relacional

![Control de Pacientes](../img/Relacional/Ejercicio1.jpg)