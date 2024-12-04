FROM ubuntu:24.04


RUN apt-get -y update \
    && apt-get -y install unminimize \
    && yes | unminimize \
    && apt-get -y clean

RUN apt-get -y update \
    && apt-get -y install \
        vim \
        emacs \
        git \
        fuse \
        libfuse-dev \
        pkg-config \
        build-essential \
        valgrind \
        gdb \
    && apt-get -y clean

USER ubuntu
WORKDIR /home/ubuntu/filesystem

CMD ["bash"]
