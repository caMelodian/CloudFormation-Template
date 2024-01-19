#!/bin/bash

amazon-linux-extras install -y lamp-mariadb10.2-php7.2 php7.2
yum install -y httpd
systemctl start httpd && systemctl enable httpd
cat > /var/www/html/index.html << EOF
<h1>Hello, World</h1>
<p>DB address: ${db_address}</p>
<p>DB port: ${db_port}</p>
<p>ALB dns_name: ${dns_name}</p>
EOF
curl -o /var/www/html/db.php https://cloudneta-book.s3.ap-northeast-2.amazonaws.com/chapter8/db.php
sed -i "s/dbsrv.idcseoul.internal/${db_address}/g" /var/www/html/db.php
sed -i "s/gasida/admin/g" /var/www/html/db.php
sed -i "s/qwe123/qwer1234/g" /var/www/html/db.php
systemctl enable --now httpd

        #   amazon-linux-extras install -y lamp-mariadb10.2-php7.2 php7.2
        #   yum install -y httpd lynx
        #   systemctl start httpd && systemctl enable httpd
        #   curl -o /var/www/html/db.php https://cloudneta-book.s3.ap-northeast-2.amazonaws.com/chapter8/db.php
        #   rm -rf /var/www/html/index.html
        #   echo "<h1>CloudNet@ FullLab - SeoulRegion - Websrv1</h1>" > /var/www/html/index.html