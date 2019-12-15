#!/bin/sh

set -e

apt-get update && apt-get install \
    aria2 \
    curl \
    dnsutils \
    git \
    nmap \
    p7zip \
    radare2 \
    tmux \
    tshark \
    vim \
    -y

apt-get update && apt-get install \
    build-essential \
    default-jdk \
    gcc \
    libffi-dev \
    libssl-dev \
    lua5.3 \
    mono-mcs \
    mono-csharp-shell \
    nasm \
    nodejs \
    php7.3 \
    python3-dev \
    python3-pip \
    python3.7 \
    ruby2.5 \
    -y && dpkg --add-architecture i386 && apt install libc6-i386 \
    -y && apt-get upgrade -y && apt-get autoremove -y && apt-get autoclean

curl https://sh.rustup.rs -sSf | sh -s -- -y

curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-debian-stretch-prod stretch main" > /etc/apt/sources.list.d/powershell.list
apt update && apt install powershell -y

python3 -m pip install --upgrade pip && python3 -m pip install --upgrade \
    pipenv \
    git+https://github.com/arthaud/python3-pwntools.git

git clone https://github.com/pwndbg/pwndbg /usr/local/bin/pwndbg
cd /usr/local/bin/pwndbg
./setup.sh
