FROM ubuntu:20.04

RUN apt-get update && \
    apt-get -y install python3-pip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN pip3 install pprint

RUN mkdir /app

COPY ./app.py /app/app.py

CMD python3 /app/app.py
