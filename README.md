# Steps to implement Docker for python code and FAST API
## Docker installation (Linux):
1. sudo apt-get update (to check if all dependencies wrt apt are up to date)
2. sudo apt install docker.io (to install docker)
3. sudo snap install docker (to install all docker dependencies)
4. docker --version (or docker -v) (to test if installation is done right)
5. sudo docker run hello-world (This is a build=t- in docke image which is pulled to the local computer using this command)
6. sudo docker images (Command to check number of images present on local)
7. sudo docker ps -a (Displays all exited containers)
8. sudo docker ps (To display the containers that are active)

## Steps to make a generic docker file to dockerise a python script:
1. Make a file named "Dockerfile" (It is present in the repo)
2. sudo docker build -t python-ext (Command to build a docker container , python-ext is the name of the image)
3. docker run python-ext (to run the docker image)
4. docker run -t -i python-ext (to run the docker image with interactive i/o where -t is the pseudo terminal and -i interactive mode)

## Steps to make a generic docker file and to dockerise for FAST API:
1. After masking the python scripts with FAST API routes, the main function is crucial where the port number and the host name are to be included.
2. Next, build "Dockerfile" , where you can create your own working directory and copy the requirements,txt and the app.py into it (Refer to the Dockerfile within FASTapi folder)
3. sudo docker build -t python-fastapi (python-fastapi is the name of the container)
4. sudo docker run -p 8000:8000 python-fastapi (command to run the FASTAPI code and reach to the port from the container as intended)
