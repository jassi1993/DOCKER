FROM ubuntu:20.04
RUN apt-get update && apt-get -y install wget && apt-get -y install vim && apt-get -y install telnet && apt-get -y install net-tools && apt-get -y install nginx
RUN touch .test.html
COPY ./test.html /usr/share/nginx/html
COPY /data/index.html /usr/share/nginx/html
CMD ["bash"]








