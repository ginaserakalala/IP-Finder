# My IP Address finder 

### A program that uses Apache web server , docker container and a kubernetes cluster to run a static website on an apache server inside a docker container and access it on a local machine. A dockerfile is created and includes commands to install the Apache web server and the relevant php version

## Installations
Installing Docker on Linux

curl -fsSL https://get.docker.com | sh


## Next, use the systemctl command to start the main Docker service, enable it to start during reboots, and check its status

 systemctl start docker
 systemctl enable docker
 systemctl status docker

## Setting up the Apache Docker Container

### To build the docker image, you'll use the following command

sudo docker build −t myip .

###  We start a container by using the docker run command

sudo docker run −p 80:80 −−name myip−1 myip

### Once your container runs successfully , you can fire up your browser and browse the link http://localhost:80

