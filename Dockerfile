FROM openjdk:8-jdk

RUN cd / && \
    wget https://bitbucket.org/art-uniroma2/vocbench3/downloads/vocbench3-3.0.1-full.zip && \
    unzip vocbench3-3.0.1-full.zip

RUN chmod u+x /semanticturkey-3.0/bin/st_server_run

EXPOSE 1979

WORKDIR /semanticturkey-3.0/bin

CMD ["./st_server_run"]


