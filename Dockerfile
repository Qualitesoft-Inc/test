FROM ubuntu:16.04
RUN apt-get update -y
RUN apt install curl -y
RUN curl -sL https://deb.nodesource.com/setup_8.x -o nodesource_setup.sh
RUN bash nodesource_setup.sh
RUN apt-get install -y nodejs git net-tools nano
RUN  npm install npm@5.6.0 -g
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
WORKDIR /opt/
COPY . .
ENTRYPOINT ["/opt/start.sh"]
EXPOSE 3000
