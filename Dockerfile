FROM centos:centos7

RUN latest=$(wget --no-check-certificate -qO- https://golang.org/dl/ | grep -oP '\/dl\/go([0-9\.]+)\.linux-amd64\.tar\.gz' | head -n 1) && \
    echo "https://golang.org$latest" && \
    curl -Lo /tmp/go.tar.gz "https://golang.org$latest" && \
    tar -C /usr/local -xzf /tmp/go.tar.gz

ENTRYPOINT /bin/bash
