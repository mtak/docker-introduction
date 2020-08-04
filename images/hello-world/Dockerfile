FROM ubuntu:20.04

RUN apt-get update && apt-get install -y sysvbanner && rm -rf /var/lib/apt/lists/*

COPY src/hello.sh /hello.sh

ENV NAME Developer

CMD /hello.sh
