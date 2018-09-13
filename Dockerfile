FROM dclong/jupyter:18.04

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        nodejs npm \
    && npm install -g n \
    && n 8.11.3 \
    && apt-get autoremove \
    && apt-get autoclean

