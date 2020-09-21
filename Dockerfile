FROM ubuntu:18.04

RUN mkdir /secret

WORKDIR /secret

RUN apt update && apt-get install -y python3 python3-dev python3-venv wget

RUN wget https://bootstrap.pypa.io/get-pip.py

RUN python3 get-pip.py

RUN python3 -m venv .venv

RUN /bin/bash -c "source .venv/bin/activate"

RUN pip install --upgrade google-cloud-storage

RUN pip install google-cloud-secret-manager
