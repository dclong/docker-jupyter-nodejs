# NAME: dclong/jupyter-nodejs
FROM dclong/jupyter
# GIT: https://github.com/dclong/docker-jupyter.git

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        nodejs npm \
    && npm install -g n \
    && n lts \
    # && npm cache clean --force \
    && apt-get autoremove \
    && apt-get clean

