# Docker/Prueba1

Ejemplo práctico del uso de docker.


## Introducción

En esta prueba se intenta hacer una demostración real de la herramienta docker para desplegar todo un entorno de trabajo en un contenedor portable y escalable.

El objetivo final es poder lanzar dentro de un contendor una aplicación web para la gestión de usuarios, y poder comunicarse y hacer uso de ella desde otro host, en este caso es el host donde reside el contenedor.

La aplicación web sigue el estándar de la plataforma de desarrollo MEAN (Mongo, Express, Angular y Node), y a través de ella se podrá registrar, modificar y eliminar usuarios.

La potencia de docker la vemos en este ejemplo de la siguiente manera. Sólo es necesario ejecutar el script **docker.sh** para que en cuestión de minutos la aplicación web este disponible en el contenedor y accesible desde el host para poder interacturar con ella.

## Arquitectura


En esta prueba la arquitectura es completamente monolítica y centralizada, ya que tanto la aplicación web como los servicios, en este caso la base de datos, residen en el mismo contenedor docker.


## Fichero docker.sh
Este fichero lo que hace en primer lugar es eliminar todos los contenedores e imagenes que hayan instalados en el host (posteriormente esto se valorará y mejorará) para crear la imagen que se describe en el fichero **Dockerfile**.

La imagen que docker crea es un Linux con [Node](https://nodejs.org/es/), [Express](http://expressjs.com/es/) y [MongoDB](https://www.mongodb.com/es) instalados, además de la aplicacion web descargada de su respectivo repositorio e instalados todos los paquetes necesarios para la misma descritos en su fichero **package.json**.

Después de crear la imagen, el fichero define un contenedor en base a esta imagen y lo ejecuta. Cuando el contenedor es creado levanta el servicio de [MongoDB](https://www.mongodb.com/es) y ejecuta [Node](https://nodejs.org/es/), quedando de esta manera la aplicación web accesible desde el/los puerto/s que se indicaron al crear la instancia.
