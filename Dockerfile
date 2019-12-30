FROM python:3.7-alpine
MAINTAINER PainInc

# standaard instelling voor Python
ENV PYTHONUNBUFFERED 1

# kopieert de requirements.txt naar de dockerimage en installeert deze
RUN apk add --update python py-pip
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

# maakt een nieuwe folder om de python API in te installeren en kopieert de app
RUN mkdir /app
WORKDIR /app
COPY ./app /app

# create a user to run the docker,
# indien dit niet gebeurt wordt de root gebruikt
RUN adduser -D myuser
USER myuser
