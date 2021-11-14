FROM python:3.9.0-slim-buster

WORKDIR app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
RUN export PYTHONPATH=$PYTHONPATH:/usr/src/app/src
