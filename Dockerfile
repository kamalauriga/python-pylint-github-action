FROM python:3.8.0-alpine


LABEL "com.github.actions.name"="GitHub Action for Python Pylint"
LABEL "com.github.actions.description"="Run pylint commands on python slim image"
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="black"


RUN apk update \
    && apk add postgresql-dev gcc python3-dev musl-dev

RUN apk add --update gcc libc-dev linux-headers && rm -rf /var/cache/apk/*
RUN pip install --upgrade pip
RUN pip3 install pylint

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
