FROM codercom/code-server:3.4.1

ARG git_url=https://github.com/avryhof/python-starter.git

RUN sudo apt-get install -y python3-pip python3-venv build-essential libssl-dev libffi-dev python3-dev

RUN mkdir /home/coder/project
RUN git clone $git_url /home/coder/project

WORKDIR /home/coder/project