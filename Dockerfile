FROM centos:centos7

WORKDIR /opt/deployments

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.36.0/install.sh | bash

ENTRYPOINT /bin/bash
