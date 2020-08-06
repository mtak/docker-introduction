FROM ubuntu:20.04

RUN apt-get update 
RUN apt-get -y install python3-pip 
RUN rm -rf /var/lib/apt/list/*

RUN pip3 install pprint

RUN mkdir /app

COPY ./app.py /app/app.py

CMD python3 /app/app.py
