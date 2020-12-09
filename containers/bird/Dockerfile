FROM ubuntu:latest

RUN rm -f /etc/dpkg/dpkg.cfg.d/excludes && \
    apt-get update && \
    apt-get install -qy \
        python3 \
        iputils-ping \
        iproute2 \
        net-tools \
        bird2

RUN mkdir /var/lib/bird /run/bird

VOLUME /etc/bird
EXPOSE 179/tcp

CMD ["bird", "-d", "-c", "/etc/bird/bird.conf"]
