**TO Execute the Dockerfile**

#First building the image

    - To build the image Use CLI "docker build -t my-node-app ."


#Second to run the container

    - To run the Docker container Use CLI "docker run -d --name <containername> -p <hostport:containerport> my-node-app"
                                        (eg., "docker run -d --name mynode -p 8080:8080 my-node-app")



#Finally access the port via localhost for tset "http://localhost:8080"
