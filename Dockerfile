FROM cypress/base:10

LABEL maintainer="Penn Labs"

ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8

RUN apt-get update \
    && apt-get install --no-install-recommends -y python3 python3-dev python3-distutils-extra default-libmysqlclient-dev gcc \
    && wget -qO get-pip.py "https://bootstrap.pypa.io/get-pip.py" \
    && python3 get-pip.py \
        --disable-pip-version-check \
        --no-cache-dir \
    && pip3 install --upgrade pip pipenv \
    && rm -f get-pip.py \
    && rm -rf /var/lib/apt/lists/*
