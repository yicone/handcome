# phpmyadmin 其内使用的 php 版本是 php 5.6.21，不包含 php-fpm
docker run --name phpmyadmin -d --link mysql:db -p 32768:80 -e PMA_USER=root -e PMA_PASSWORD=aljeida@mysql phpmyadmin/phpmyadmin
docker run --name mysql -e MYSQL_ROOT_PASSWORD=aljeida@mysql -d -p 3306:3306 -v /var/lib/mysql:/var/lib/mysql mysql

docker run -it -p 3306:3306 -v /var/lib/mysql:/var/lib/mysql gadn/mysql /bin/bash
docker commit 43 gadn/mysql
docker port gadn/mysql
docker history gadn/mysql

# cws.gadn.in
# gadn.gadn.in
 mv /etc/nginx/conf.d/cws.conf /etc/nginx/conf.d/gadn.in.conf
 vi /etc/nginx/conf.d/gadn.in.conf
