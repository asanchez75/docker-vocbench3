### VocBench3

It implements a docker container for VocBench3.
VocBench3 will be available in http://localhost:1979/vocbench3/
Please, do not change the port number, otherwise will not work. This is a restriction imposed by using the war file inside the default Karaf server.
For docker-compose.yml use the following settings:

```
version: '3'
services:
  vocbench3:
    image: asanchez75/vocbench3:3.0.1 
    volumes:
      - ./vocbench3:/data
    environment:
      - COLUMNS=236
      - LINES=66
      - TERM=xterm
    ports:
      - 1979:1979
```



