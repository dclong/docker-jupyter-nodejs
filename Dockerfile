FROM dclong/jupyter

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        nodejs npm \
    && npm install -g n \
    && n 10.15.3 \
    && npm cache clean \
    && apt-get autoremove \
    && apt-get clean

