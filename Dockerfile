FROM debian:latest

RUN apt-get update && apt-get install -y \
python3  \
curl \
wget \
supervisor \
gnupg \
apt-transport-https \
apt-utils \
beanstalkd 

RUN curl --silent --location https://deb.nodesource.com/setup_22.x | bash -
RUN apt-get update &&  apt-get install -y \
nodejs    

WORKDIR /code
RUN npm install -g nodemon
COPY package.json /code/package.json
RUN npm install && npm ls
RUN mv /code/node_modules /node_modules
COPY . /code
EXPOSE 9091 9091
RUN mkdir -p   /var/log/supervisor
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY files/alprd.conf /etc/openalpr/alprd.conf
CMD ["/usr/bin/supervisord"]
EXPOSE 27017
EXPOSE 9091