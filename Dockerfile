# Base Image
FROM anapsix/alpine-java:8_jdk

# Maintainer
MAINTAINER Vali Malinoiu <vali@swazm.com>

# Dependencies

RUN apk add ca-certificates

# Environment Variables

ENV TEAMCITY_DATA_PATH=/data/teamcity_server/datadir
ENV TEAMCITY_LOGS=/data/teamcity_server/logsdir
VOLUME $TEAMCITY_DATA_PATH
EXPOSE 8111

# Download Teamcity Server
RUN wget https://download.jetbrains.com/teamcity/TeamCity-2018.1.3.tar.gz
RUN tar -xvf TeamCity-2018.1.3.tar.gz
RUN chmod +x /TeamCity/bin/teamcity-server.sh
RUN rm /TeamCity-2018.1.3.tar.gz
RUN rm -rf /Teamcity/buildAgent

WORKDIR /TeamCity/bin
CMD ./teamcity-server.sh run