# contenedores de sistemas gestores de base de datos
![Imagen docker](./img/imagen_docker.webp)

## imagenes

> comandos para cada imagen

- descargar imagen de postgres

```
docker pull postgres:14.22-trixie
```

-Descargar imagen de tutorial de docker
```
docker pull docker/getting-started
```


## Creacion de contenedores

```docker
docker run -d -p 80:80 **Nombre o codigo de la imagen**
```
Donde:

-d detach (backgaund)
-p puerto (el primer numero del puerto no se cambia el segundo si podemos)


## Contenedor de Tutorial del Docker
```
docker run -d -p 80:80 docker/getting-started:latest
docker run -d -p 80:8090 d7933
```


### Contenedor de mariadb sin volumen

```docker
docker run -d --name server-MariadbG1 -p 3343:3306 -e MARIADB_ROOT_PASSWORD=123456 e0236
```
### Contenedor de mariadb con volumen
```
docker volume create v-mariadbg1
docker run -d --name server-MariadbG1 -p 3343:3306 -e MARIADB_ROOT_PASSWORD=123456 -v v-mariadbg1:/var/lib/mysql e0236
```

### Contenedor de postgres con volumen
```
docker volume create v-postgresg1 
docker run -d --name Server-PostgresG1 -p 5455:5432 -e POSTGRES_PASSWORD=123456 -v v-postgresg1:/var/lib/postgresql/data bbb885
```

### Contenedor de SQLserver con volumen
```
docker run -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=P@ssw@rd" -p 1450:1433 --name SQLServerG1 -u0 -d -v v-sqlserverg1/var/opt/mssql/data/ e07b9
``` 


## Comando Docker

| Comando | Descripción |
| :--- | :--- |
| **Docker --version** | _Muestra la version del docker_ |
| **Docker --pull nombre_imagen** | _Descargar una imagen de docker Hub_ [Imagen de tutorial de docker](https://hub.docker.com/r/docker/getting-started)|
| **Docker images** | _Muestra todas las imagenes_|
| **docker run** | _Permite crear un contenedor(no se puede crear 2 contenedores con el mismo numero de puerto)_|
| **docker ps** | _Visualiza los contenedores que estan en ejecucion_|
| **docker container ls** | _Visualiza los contenedores que estan en ejecucion_|
| **docker ps -a** | _Visualiza TODOS los contenedores_|
| **docker container ls -a** | _Visualiza TODOS los contenedores_|
| **docker rm nombre_del_contenedor_o_ID** | _Borra el contenedor_|
| **docker run** | _docker run -d --name server-MariadbG1 -p 3343:3306 -e MARIADB_ROOT_PASSWORD=123456 nombre o id de la marca_|
| **docker stop nombre o ID** | _Detiene el contenedor_|
| **docker start nombre o ID** | _Inicia un contenedor_|
| **docker rm nombre o ID** | _Elimina un contenedor que NO esta en ejecucion_|
| **docker rm -f nombre o ID** | _Elimina un contenedor que ESTA esta en ejecucion_|
| **Mayores privilegios** | _MariaDB = root, Postgres = postgres, SQL server = sa(Super Admin)_|
| **docker volume ls** | _Muestra los volumenes que existen en docker_|


