# EJERCICIOS MODELO E-R

1. Ejercicio 1
En un hospital se registra informacion de sus pacientes

## De cada paciente se desea almacenar:

    -Algo que li identifique.
    -Nombre
    -Fecha de nacimiento.

## De un expediente medico se almacena:

    -Numero de expediente.
    -Fecha de apertura.
    -Tipo de sangre

## Reglas del negocio.

    -Cada paciente debe tener exactamente un expediente medico.
    -Cada expediente pertenece a un unico paciente.
    -No puede existir ningun expediente medico sin paciente.
    -No puede existir un paciente sin un expediente.


### RESULTADO MODELO E-R
![Hospital](../img/E-R/Ejercicio1BaseDeDatos.jpg)


2. Ejercicio 2

Una universidad administra profesores y cursos.

> De cada profesor se almacena:

-Clave profesor
-Nombreuj
-Especialidad

> De cada curso se almacena:

-Identificacion dle curso
-Nombre del curso
-Creditos

> Reglas del negocio

1.Un profesor puede impartir varios cursos.
2.Un curso solamente puede ser impartido por un profesor .
3.Puede existir un profesor que actualmente no imparta cursos.
4.Todo curso debe ser asignado a un proferos.

Se debe realizar lo siguente:

-Entidades
-Identificar la Relación **IMPARTE**
-Determinar la cardinalidad
-Determinar la participación

### RESULTADO MODELO E-R
![Hospital](../img/E-R/Ejercicio2BaseDeDatos.jpg)


3. Ejercicio 3

Una escuela administra alumnos y materias.

> De cada alumno se almacena:

-Matricula.
-Nombre.
-Semestre.

> De cada materia se almacena:

-Clave.
-Nombre de la materia.
-Creditos.

> Reglas del negocio:

1.Un alumno puede inscribirse en varias materias.
2.Una materia puede tener muchos alumnos incritos.
3.Puede existir una materia sin alumnos inscritos.
4.Todos alumno debe estar inscrito en al menos una materia.
5.De cada inscripcion se debe almacenar: Fecha de inscripcion y calificacion final.

### RESULTADO MODELO E-R
![Hospital](../img/E-R/Ejercicio3BaseDeDatos.jpg)




4.Ejercicio 4

En una empresa encargada de realizar venta de productos:

>De cada cliente se almacena:
-Numero de cliente que lo identifique
-Nombre de cliente el cual es una persona moral
-RFC

>La empresa realiza pedidos en los cuales almacena lo siguente:
-Numero de pedido
-Fecha

>La empresa tambien almacena productos de los cuales registra lo siguente:
-Numero del producto
-Nombre
-Precio

>Al realizar los pedidos deben registrar la cantidad de productos pedidos y su precio.i

>Reglas del negocio:
1.Un cliente puede realizar muchos pedidos 
2.Cada pedido pertenece a un solo cliente 
3.Un pedido puede contener varios productos
4.Un producto puede aparecer en muchos pedidos
5.Un pedido debe contener al menos un producto
6.Un producto puede no aver sido vendido
7.El detalle del pedido no existe sin pedido 
8.El detalle del pedido no existe sin producto 
9.El detalle almacena cantidad y precio de venta


### RESULTADO MODELO E-R
![Hospital](../img/E-R/Ejercicio4BaseDeDatos.jpg)
