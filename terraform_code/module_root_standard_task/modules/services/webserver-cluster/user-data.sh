#!/bin/bash

yum install -y httpd
systemctl start httpd && systemctl enable httpd
cat > /var/www/html/index.html << EOF
<h1>Hello, World</h1>
<p>DB address: ${db_address}</p>
<p>DB port: ${db_port}</p>
<p>server Port: ${server_port}</p>
EOF


