FROM openjdk:8-jdk
MAINTAINER Adam Sanchez <a.sanchez75@gmail.com>

RUN apt-get update && apt-get install -y tmux
RUN cd /tmp && \
    wget https://bitbucket.org/art-uniroma2/vocbench3/downloads/vocbench3-6.0.1_full.zip && \
    unzip vocbench3-6.0.1_full.zip

COPY init.sh /

RUN chmod u+x /tmp/semanticturkey-6.0/bin/karaf && \
    chmod u+x /init.sh && \
    mkdir /data

EXPOSE 1979

CMD ["/init.sh"]

