[![official JetBrains project](http://jb.gg/badges/official-plastic.svg)](https://confluence.jetbrains.com/display/ALL/JetBrains+on+GitHub)
[![jetbrains/teamcity-server](https://img.shields.io/docker/pulls/swazm/teamcity-server.svg)](https://hub.docker.com/r/jetbrains/teamcity-server/)

## TeamCity Server Image Dockerfile

This project contains the Dockerfiles and all necessary scripts to build the Linux images and run a TeamCity server inside the container.

You can pull the ready-to-use image from the Docker Hub repository
                                     
`docker pull swazm/teamcity-server`


###Usage
```
docker run -it --name teamcity-server-instance  \
    -v <path to data directory>:/data/teamcity_server/datadir \
    -p <port on host>:8111 \
    swazm/teamcity-server
```

### License
The image is available under the TeamCity license.
TeamCity is free for perpetual use with the limitation of 100 build configurations (jobs) and 3 agents. Licensing details.

### Feedback
Report issues of suggestions to the official TeamCity issue tracker.

### Under the Hood
This image is built on top of TeamCity base image which includes:

- alpine linux
- Oracle JDK 8 Update 161, 64 bit
