FROM ubuntu:18.04
LABEL maintainer="Ridwan Shariffdeen <rshariffdeen@gmail.com>"

RUN apt-get update && apt-get upgrade -y && apt-get autoremove -y

# install some basic software
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install --yes --no-install-recommends \
    ca-certificates \
    cmake \
    gdb \
    make \
    nano \
    openssh-client \
    vim \
    wget


# install dependencies for benchmark programs
RUN DEBIAN_FRONTEND=noninteractive apt-get install --yes --no-install-recommends \
    automake \
    autopoint \
    bear \
    bison \
    ca-certificates \
    clang \
    clang-format \
    cmake \
    curl \
    flex \
    g++-multilib \
    gcc-multilib \
    gettext \
    git \
    gperf \
    libass-dev \
    libbz2-dev \
    libc6-dev-i386 \
    libdaq-dev \
    libdnet \
    libdumbnet-dev \
    libedit-dev \
    libelf-dev \
    libffi-dev \
    libfreetype6 \
    libfreetype6-dev \
    libgdbm-dev \
    libglib2.0-dev \
    libjpeg-dev \
    libldap-dev \
    libluajit-5.1-dev \
    liblzma-dev \
    libncurses-dev \
    libnghttp2-dev \
    libnuma-dev \
    libpcap-dev \
    libpciaccess-dev \
    libpcre3 \
    libpcre3-dev \
    libpython-dev \
    libpython3-dev \
    libreadline-gplv2-dev \
    libsdl1.2-dev \
    libsqlite-dev \
    libsqlite3-dev \
    libssl-dev \
    libtasn1-dev \
    libtool \
    libvdpau-dev \
    libx11-dev \
    libxcb-shm0-dev \
    libxcb-xfixes0-dev \
    libxcb1-dev \
    libxml2-dev \
    m4 \
    mercurial \
    nano \
    nasm \
    openssl \
    php \
    php7.4-dev \
    pkg-config \
    psmisc \
    python3 \
    rsync \
    subversion \
    tcl-dev \
    texinfo \
    tix-dev \
    tk-dev \
    unzip \
    wget \
    xutils-dev \
    yasm \
    zlib1g-dev

