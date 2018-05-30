FROM debian:jessie
MAINTAINER Debapriya Das(yodebu@gmail.com)
RUN apt-get -y update
RUN printf "deb http://httpredir.debian.org/debian jessie-backports main non-free\ndeb-src http://httpredir.debian.org/debian jessie-backports main non-free" > /etc/apt/sources.list.d/backports.list
RUN apt-get update && apt-get -y install gnupg2
RUN apt-get install -y apt-transport-https

# cleanup
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# ADD start.sh /root/start.sh
# set start command
CMD /bin/sh
