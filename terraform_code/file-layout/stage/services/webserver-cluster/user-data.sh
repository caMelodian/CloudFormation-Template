#!/bin/bash

yum install -y httpd
cat > /var/www/html/index.html << EOF
<h1>Hello, World</h1>
<p>DB address: ${db_address}</p>
<p>DB port: ${db_port}</p>
EOF
systemctl enable --now httpd
sed -i "s/dbsrv.idcseoul.internal/${db_address}/g" /var/www/html/db.php
sed -i "s/gasida/admin/g" /var/www/html/db.php
sed -i "s/qwe123/qwer1234/g" /var/www/html/db.php


