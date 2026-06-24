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

## RESULTADO MODELO E-R

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


Elabora un programa que gestione los empleados de una empresa, todos comparten caracteristicas comunes pero cada tipo tiene funciones especificas,
Se tiene una clase empleado que es la clase padre o clase base, 
la cual tiene como atributos: nombre, id, salario base.
los metodos: mostrar informacion y calcular salario.

Tambien se tiene una clase desarrollador la cual tiene un atributo llamado: lenguaje que domina y de tipo int horas extra.
Sus metodos son: calcular salario , mostrar informacion y un metodo llamado actividades.

Tambien debe de incluir una clase gerente la cual tiene un atributo llamado: personas a cargo de tipo entero y otro atributo de tipo double llamado bono gerencial.
sus metodos son: calcular salario, mostrar informacion y un metodo llamado convocar reunion.

La clase main para elegir el tipo de empleado.

Adicional a lo anterior agrega una nueva clase llamada diseñador que herede de empleado, tenga un atributo llamado herramienta preferida, sobreescriba el metodo calcular salario al cual se le debe sumar 2500 de bono ademas de un metodo llamado diseñar interface en el que tu puedes diseñarlo como mejor convenga agregar el tipo de empleado a la clase main.