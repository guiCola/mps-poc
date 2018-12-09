#!/bin/bash
#docker stop $(docker ps -a -q)
#docker rm $(docker ps -a -q)
#docker exec -it DockerTemplatePhenix "bash"


docker stop mysql
docker rm mysql
docker rmi mysql:1

docker build . -t mysql:1 --no-cache
docker run -d --name=mysql -e MYSQL_ROOT_PASSWORD=root mysql:1

#docker run -d --name=mysql -e MYSQL_ROOT_PASSWORD=root -v $(pwd)/data:/var/lib/mysql mysql


#docker exec mysql mysql -u root --password=root
#cat ./sql/mysqlsampledatabase.sql | docker exec -i mysql /usr/bin/mysql -u root --password=root guitou
#cat ./sql/mysqlsampledatabase.sql | docker exec -i mysql /usr/bin/mysql -u root --password=root guitou

#docker inspect mysql