FROM python:3.7

ENV PYTHONUNBUFFERED 1

ENV APPLICATION_ROOT /app
RUN mkdir $APPLICATION_ROOT
WORKDIR $APPLICATION_ROOT

COPY . /app/

RUN apt update
RUN apt install netcat -yqq
RUN apt install vim -yqq

RUN pip install -r requirements/local.txt
