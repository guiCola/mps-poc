#!/bin/bash
#docker stop $(docker ps -a -q)
#docker rm $(docker ps -a -q)
#docker exec -it DockerTemplatePhenix "bash"


docker stop sqlsrv
docker rm sqlsrv
docker rmi sqlsrv:1

docker build . -t sqlsrv:1 --no-cache
docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=DSI@1234"  -p 1433:1433 --name=sqlsrv -d sqlsrv:1
#docker exec -it sqlsrv "bash"
