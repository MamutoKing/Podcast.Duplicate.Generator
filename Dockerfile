FROM ubuntu:latest

Run apt-get update && apt-get install - y \
    pythn3.10 \
    python3-pip \
    git

RUN pip3 install pyYAML

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh / entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]