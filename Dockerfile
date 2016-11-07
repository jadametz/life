FROM python:3.5.2-alpine
MAINTAINER Jesse Adametz <jesseadametz@gmail.com>

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY index.html .
COPY life.md .

EXPOSE 8080
CMD ["python", "-m", "http.server", "8080"]
