FROM python:3.8

RUN apt update -y
RUN apt install -y software-properties-common
RUN apt-add-repository 'deb http://security.debian.org/debian-security stretch/updates main'
RUN apt update -y

RUN pip3 install --upgrade pip

RUN pip3 install -U tox wheel setuptools virtualenv --cache-dir=/codefresh/volume/pip-cache

COPY requirements.txt .
RUN pip3 install -r requirements.txt
