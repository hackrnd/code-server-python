FROM codercom/code-server:3.4.1

RUN sudo apt-get update \
 && sudo apt-get install -y \
    python3-pip \
    python3-venv

RUN python3 -m venv /home/coder/venvs/myenv 

RUN mkdir /home/coder/project

WORKDIR /home/coder/project