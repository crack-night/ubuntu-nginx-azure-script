#!/bin/bash
apt-get update -y
apt-get install nginx -y
systemctl enable nginx
systemctl start nginx

# Generar el ID simple
MY_ID=$(cat /proc/sys/kernel/random/uuid)

cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
<title>Server ID</title>
<style>
body { font-family: sans-serif; background: #2c3e50; color: white; text-align: center; }
.box { border: 2px solid #27ae60; display: inline-block; padding: 20px; margin-top: 50px; }
.uuid { color: #f1c40f; font-weight: bold; }
</style>
</head>
<body>
<div class="box">
<h1>Servidor Activo</h1>
<p>ID de Instancia: <span class="uuid">$MY_ID</span></p>
</div>
</body>
</html>
EOF

systemctl restart nginx
