# docker-helloworld
Hello World code to demonstrate docker container deployment
Steps
	A) Create dockerfile 
	B) Build Image
	C) Run image to start the container…

-----
A - Create a Dockerfile in the project folder

In the Dockerfile enter below contents

FROM openjdk:19-alpine
--> This is the base image on which the container will run. Alpine is the lighter version of the JDK, version depends on the current Java version…

COPY build/libs/hello-world-docker-0.1.jar      /app.jar
Here /app.jar is the target file name in the container….
The jar file is kept at build --> libs  


CMD["java","-jar","/app.jar"]
Next is to provide the run command which will be executed inside the container to run the application….


B -  How to build the container
Once the "Dockerfile" is created the next task is to build the container…

Go to the path where dockerfile is kept

Run command 
docker build -t <image_name>:<tag> .
Here -t is to tag or name the image….. 1 is the version and "." at the end is the current directory….


Note: In case of older Mac versions, we need to add "platform linux/amd64" argument or equivalent for intel processor to the build command as shown below
It'll show the image name, ID, size etc…

===============
C - Run image to start the container….

docker run -d --name <container-name> -p <hostport>:<containerport> <image name>
-d = detached mode…..
--name = name of the container…
-p bind the hosts port to the container's internal port…..here we are keeping the same…


Command to list the containers = docker container ls
Command to list what processes are running: docker ps -a |grep helloworld

We can also see the containers in the Docker Desktop too…

============== How to push image to the docker hub=============
Command to push image to docker hub= docker image push image

docker tag <image_name>:<tag> <docker_username>/<image_name>:<Tag>
Command to tag the local image to the hub/repo…

docker push <docker_name>/<image_name>:<Tag>
Command to push the image

