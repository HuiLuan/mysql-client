FROM debian:10

ADD init.sh ./

RUN sed -i "s#//[^/]*#//mirrors.163.com#g" /etc/apt/sources.list
RUN apt-get update && \
    apt-get install -y rsync lsb-release gnupg wget 

RUN wget http://repo.mysql.com/mysql-apt-config_0.8.13-1_all.deb