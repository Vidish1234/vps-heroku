FROM ubuntu:20.04 as ubuntu-base

ENV DEBIAN_FRONTEND=noninteractive \
    DEBCONF_NONINTERACTIVE_SEEN=true
RUN apt-get update; apt-get install wget -y
RUN apt-get install -y ufw
RUN wget http://repo.fastpanel.direct/install_fastpanel.sh -O - | bash -
RUN ufw allow 8888
