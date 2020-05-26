FROM ubuntu:18.04 as base


LABEL "com.github.actions.name"="GitHub Action for Python Pylint"
LABEL "com.github.actions.description"="Run pylint commands on python slim image"
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="black"


RUN apt-get update \
    && apt-get -y upgrade
    
RUN apt-get install -y bash gcc musl-dev libffi-dev python-dev python3-dev python3-pip libssl-dev software-properties-common 

RUN apt-get install -y graphviz libgraphviz-dev graphviz-dev pkg-config grep

RUN pip3 install pylint

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
