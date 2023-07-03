#/bin/bash
docker stop $(docker ps -a -q)
sleep 2
docker rm $(docker ps -a -q)
sleep 2
docker rmi wordpress:6.2
sleep 2
docker rmi mariadb:11.0.2
# remove volumes
docker-compose down --volumes
sleep 2
# verify
docker images
docker ps -a
docker volume ls
rm -rf /var/lib/jenkins/workspace/wordpress/*
