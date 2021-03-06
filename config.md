**Manuel Jesús García Manday**   	
**31 de octubre de 2016**


##Configuración Docker


- **Instalar docker**

		curl -fsSL https://get.docker.com/ | sh
		sudo apt-get install docker.io

- **Añadir un usuario al grupo para que pueda ejecutar Docker sin ser root**

		sudo groupadd docker
		sudo usermod -aG docker jesus

- **Conocer las imagenes de docker disponibles**
		
		docker images

- **Crear fichero DockerFile**

- **Generar la nueva imagen con docker en base al fichero creado anteriormente**

		sudo docker build -t NAME_REPOSITORY .
		
		sudo docker build -t NAME_REPOSITORY:TAG . (dentro del directorio donde este el fichero Dockerfile)
		
		sudo docker build -t NAME_REPOSITORY:TAG --file ./DockerFile .

- **Crear un contenedor a partir de la imagen previamente creada**

		sudo docker run -it --name NAME_REPOSITOTY /bin/bash

		sudo docker run -p 49160:8080 [--name NAME] NAME_REPOSITORY:TAG (-p redirige un puerto publico a un puerto privado dentro del contendor)

		sudo docker run  -it -p 80:80 --name NAME NAME_REPOSITORY:TAG (se conecta al contenedor una vez creado)

		sudo docker run -P NAME_REPOSITORY (realiza el mapeo de puertos entre el host y el contenedor autamáticamente a través de un rango elevado de puertos - *ephemeral port range*)
		
- **Ver los contenedores creados**

		sudo docker ps -a
	
- **Ejecutar un nuevo comando a un contenedor que este corriendo**
		
		sudo docker exec -t -i NAME_SERVER COMAND

- **Salir de un contenedor** 
		
		exit
		
- **Ejecutar un contenedor**

		sudo docker start NAME_CONTAINER
		
- **Detener un contenedor**

		sudo docker stop NAME_CONTAINER

- **Eliminar una imagen de docker**
		
		sudo docker rmi -f NAME_REPOSITORY:TAG	
		
- **Eliminar un contenedor de docker**

		sudo docker rm -f CONTAINER_ID (un contenedor con ese ID)
		
		sudo docker rm -f $(sudo docker ps -a -q) (todos los contenedores)
		
		sudo docker rm -f $(sudo docker ps -a -q | grep ’11’) (los contenedores que comiencen por ese ID)

- **Obtener información de docker**

		sudo docker info