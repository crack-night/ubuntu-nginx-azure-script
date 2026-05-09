#!/bin/bash
apt-get update -y
apt-get install nginx -y
systemctl enable nginx
systemctl start nginx
cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
<title>Azure Web Server</title>
<style>
body { font-family: sans-serif; background: #2c3e50; color: white; text-align: center; }
.box { border: 2px solid #27ae60; display: inline-block; padding: 20px; margin-top: 50px; }
</style>
</head>
<body>
<div class="box">
<h1>Deployment Successful</h1>
<p>Nginx is running on Ubuntu in Azure.</p>
</div>
</body>
</html>
EOF
systemctl restart nginx
