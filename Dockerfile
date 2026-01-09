FROM python:3.10-alpine

LABEL maintainer="hkorobko@gmail.com"

ENV PYTHONUNBUFFERED=1

WORKDIR /app

RUN apk add --no-cache \
    gcc \
    musl-dev \
    postgresql-dev

COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt

COPY . .
