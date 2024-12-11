#!/bin/bash

#install packages
sudo yum update -y && sudo yum upgrade -y
sudo yum install docker -y

#restart docker
sudo systemctl start docker

#pull docker image
sudo docker pull 1nfosecsingh/weather-check-app:latest

#run container
sudo docker run -p 8080:5000 1nfosecsingh/weather-check-app

