#!/bin/bash
echo Cleaning . . .
sudo docker stop mcs
sudo docker rm mcs
sudo docker rmi tris/mcs
echo Building . . .
sudo docker build -t tris/mcs .
echo Running . . .
sudo docker run -d --name mcs -p 25565:25565 tris/mcs
