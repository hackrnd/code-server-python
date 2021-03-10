FROM codercom/code-server:3.4.1

ARG git_url=https://github.com/hackrnd/flask-starter.git

RUN sudo apt-get update \
 && sudo apt-get install -y \
    python3-pip \
    python3-venv

RUN python3 -m venv /home/coder/.local/venvs/myenv 

RUN mkdir /home/coder/project
RUN git clone $git_url /home/coder/project

WORKDIR /home/coder/project