FROM ubuntu:latest

RUN rm -f /etc/dpkg/dpkg.cfg.d/excludes && \
    apt-get update && \
    apt-get install -qy \
        python3 \ 
        iputils-ping \
        iproute2 \
        net-tools \
        tcpdump \
        bird
