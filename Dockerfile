####################################################################################
FROM ubuntu:latest
MAINTAINER Debapriya Das
# RUN wget google.com 
RUN apt-get update  ##  GETS STUCK HERE
RUN printf "deb http://httpredir.debian.org/debian jessie-backports main non-free\ndeb-src http://httpredir.debian.org/debian jessie-backports main non-free" > /etc/apt/sources.list.d/backports.list
RUN apt-get update \
    && apt-get -yq install gnupg2 apt-transport-https

# cleanup
RUN apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# ADD start.sh /root/start.sh
# set start command
CMD /bin/sh
########################################################################################

