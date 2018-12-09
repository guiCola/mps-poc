docker pull phpmyadmin/phpmyadmin

docker stop myadmin
docker rm myadmin

docker run --name myadmin -d --link mysql:db -p 8080:80 phpmyadmin/phpmyadmin

#http://localhost:8080/’