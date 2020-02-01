FROM dclong/jupyter

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        nodejs npm \
    && npm install -g n \
    && n 12.14.1 \
    # && npm cache clean --force \
    && apt-get autoremove \
    && apt-get clean

