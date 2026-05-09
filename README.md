# Azure NGINX Deploy Script

Script Bash para instalar **NGINX** y desplegar un sitio web sencillo, útil para pruebas con servidores Ubuntu en la nube de Azure.

## 🚀 Uso en Azure
Este script está diseñado para ser utilizado en el campo **User Data** (o Custom Data) durante la creación de una Máquina Virtual:

1. Ve a la pestaña **Advanced** al crear tu VM.
2. Pega el contenido de `script.sh` en el cuadro de **User Data**.
3. Asegúrate de abrir el **puerto 80 (HTTP)** en el NSG (Network Security Group).

## 🛠️ Tecnologías
* Ubuntu Server
* NGINX
* Bash
