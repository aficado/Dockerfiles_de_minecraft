Estos archivos contienen codigo para ejecutar un servidor de minecraft de manera que puedas levantar tu propio servidor de minecraft usando minecraft server original dentro de un docker.

para el uso de este repositorio deberas tener instalado y en ejecucion docker desktop desde el siguiente enlace:
https://www.docker.com/products/docker-desktop

deberas crear una carpeta donde estaran los 2 archivos de este repositorio ademas de la carpeta de tu servidor.

Dockerfile config:
la seccion "COPY server /minecraft" donde tal que "server" sera reemplazado por el nombre de la carpeta donde tengas
el servidor.

recordar que el archivo con el cual se inicia el servidor ya sea server.jar por defecto descargado desde la pagina directa, o paperMC.tu.version.minecraft el cual viene con spigot y buildkit
debera ser renombrado a "server.jar" caso contrario deberas ajustor otros parametros en tu servidor.

la seccion de CMD que es el comando que se ejecutara al iniciar "CMD ["java", "-Xmx4G", "-Xms1G", "-jar", "server.jar", "nogui"]" podras cambiar el apartado "-Xmx4G"
por la cantidad maxima de memoria RAM que se asignara al servidor, de la misma manera con "-Xms1G" para designar la cantidad de memoria inicial del servidor.


compose.yml config:
este archivo consta de dos servicios, el servicio de minecraft y el de playit.gg.

para su correcta configuracion deberas intercambiar el ejemplo de:
environment:
      - SECRET_KEY=5042d876825052d3c6a86a1c0f99a41e7899b1c9554c8fe0418a123c3dd6c454
por tu llave secreta asignada por la pagina siguiente:
https://playit.gg/account/agents

comando para levantar el servidor en la terminal y con docker desktop descargado y ejecutandose:
cd C:la/ruta/de_la_carpeta/de_tus_archivos/y_servidor

docker compose up -d

con esto abras levantado tanto el servicio de docker asi como el servicio de playit.gg donde podran comunicarse con tu servidor de forma publica y remota.
la terminal puede ser cerrada en cualquier momento sin embargo docker desktop debe permanecer aunque sea en segundo plano.

para cerrar la sesión deberas ejecutar:
docker compose down

el enlace para ingresar al servidor de manera remota y publica sera proporcionado por la pagina playit.gg al crear un tunnel.
asi mismo se puede ingresar al servidor si eres el host mediante el direccionamiento de puertos previamente ya hecho en el documento Dockerfile
atraves de la direccion: "localhost".
