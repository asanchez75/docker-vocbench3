FROM openjdk:8-jdk

RUN cd /tmp && \
    wget https://bitbucket.org/art-uniroma2/vocbench3/downloads/vocbench3-3.0.1-full.zip && \
    unzip vocbench3-3.0.1-full.zip

COPY init.sh /

RUN chmod u+x /tmp/semanticturkey-3.0/bin/st_server_run && \
    chmod u+x /init.sh && \
    mkdir /data

EXPOSE 1979

#WORKDIR /semanticturkey-3.0/bin

#CMD ["./st_server_run"]

CMD ["/init.sh"]

