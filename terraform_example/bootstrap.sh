#!/bin/bash

apt-get update && sudo apt-get upgrade
apt-get install -y apache2
systemctl enable apache2

cat <<EOF > /var/www/html/index.html
<html>
<body>
<p>hostname is: $(hostname)</p>
</body>
</html>
EOF
chown -R apache:apache /var/www/html
systemctl restart apache2
ufw allow in "Apache Full"
