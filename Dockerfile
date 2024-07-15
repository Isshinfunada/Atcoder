FROM golang:1.20.6

WORKDIR /go/src

RUN apt update && apt install -y nodejs npm python3 python3-pip python3.11-venv

RUN python3 -m venv venv

RUN . venv/bin/activate && pip3 install online-judge-tools

ENV PATH /go/src/venv/bin:$PATH

RUN npm install -g atcoder-cli

RUN go install -v golang.org/x/tools/gopls@latest

RUN acc config default-task-choice all