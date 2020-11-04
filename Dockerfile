FROM centos:centos7

RUN latest=$(curl -s --insecure https://golang.org/dl/ | grep -oP '\/dl\/go([0-9\.]+)\.linux-amd64\.tar\.gz' | head -n 1) && \
    echo "https://golang.org$latest" && \
    curl -sLo /tmp/go.tar.gz "https://golang.org$latest" && \
    tar -C /usr/local -xzf /tmp/go.tar.gz

ENTRYPOINT /bin/bash
