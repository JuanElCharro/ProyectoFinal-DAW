# ProyectoFinal-DAW

Instrucciones rápidas para abrir el proyecto:
1. Abrir el proyecto con "Spring Tools Suite" teniendo Java-11 JDK y JRE instalado en el sistema.
2. Usar una BBDD MySQL y cargar el fichero: "ProyectoFinal-DAW/src/main/resources/static/bbdd/bbdd.sql". Usuario y contraseña deben ser "root", sino cambiarlo en el fichero "application.properties" del proyecto.
3. Descargar Node.js y ejecutar el comando "$ json-server front.json" desde una consola en el directorio: "ProyectoFinal-DAW/src/main/resources/static/json/".
4. Dentro del proyecto hacer click derecho sobre el directorio principal en la ventana de Eclipse "Project Explorer": "Maven->UpdateProject".
5. Ejecutar como "Spring Boot App" y cargar la dirección "localhost:8080/libreApp" en un navegador.

Herramientas:
- Java JDK 11: https://adoptopenjdk.net/index.html
- Spring Tools Suite: https://spring.io/tools
- Node.js: https://nodejs.org/en/
- MySQL Community Server: https://dev.mysql.com/downloads/installer/ (y algún cliente, como Workbench o HeidiSQL: https://www.heidisql.com/).
- El resto de herramientas como VUE.js o Bootstrap están implementadas dentro del proyecto de Spring.
