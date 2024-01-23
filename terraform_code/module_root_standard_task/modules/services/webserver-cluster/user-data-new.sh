#!/bin/bash

yum install -y httpd
systemctl start httpd && systemctl enable httpd
cat > /var/www/html/index.html << EOF
<h1>Hello, World </h1>
<h1>Stage Web Server </h1>
EOF