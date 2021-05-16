# ProyectoFinal-DAW

Instrucciones rápidas para abrir el proyecto:
1. Abrir el proyecto con "Spring Tools Suite" teniendo Java-11 JDK y JRE instalado en el sistema.
2. Usar una BBDD MySQL y cargar el fichero: "ProyectoFinal-DAW/src/main/resources/static/bbdd/bbdd.sql".
3. Descargar Node.js y ejecutar el comando "$ json-server front.json" desde una consola en el directorio: "ProyectoFinal-DAW/src/main/resources/static/json/".
4. Dentro del proyecto hacer click derecho sobre el directorio principal: "Maven->UpdateProject".
5. Ejecutar como "Spring Boot App" y cargar la dirección "localhost:8080/libreApp" en un navegador.

Actualización:
He realizado cambios para el despliegue, los nombro a continuación:
1. He cambiado todas las IP de "localhost" a "XX.XX.XXX.XX" (ip global) menos la del fichero "application.properties" de conexión a la BBDD.
2. Para ejecutar también el servidor Node.js en la IP global del router he usado el siguiente comando: $ json-server --host 0.0.0.0 front.json.
3. He abierto los puertos 8080 y 3000 en mi router, y añadida la excepción a mi firewall.

IMPORTANTE:
Para ejecutar como desarrollo en local, únicamente hay que sustituir todas las direcciones por "localhost": (Ctrl+h > Reemplazar en todo el proyecto > "XX.XX.XXX.XX" por "localhost" [se puede hacer desde varios editores y desde el mismo Eclipse, en la ventana "Proyect Explorer"]) y seguir los pasos de arriba "Instrucciones rápidas para abrir el proyecto".
