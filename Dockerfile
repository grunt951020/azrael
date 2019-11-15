## BUILD INSTRUCTIONS
## grunt@asdf-imac ~> docker-machine create default
## grunt@asdf-imac ~> eval (docker-machine env default)
## grunt@asdf-imac ~> docker build -t azrael .
## grunt@asdf-imac ~> alias azrael="docker run -it -v \$PWD:/save --rm --privileged --security-opt seccomp=unconfined azrael /bin/bash"
## grunt@asdf-imac ~> funcsave azrael
## grunt@asdf-imac ~> azrael

FROM kalilinux/kali-linux-docker
COPY /install-docker.sh /
RUN sh install-docker.sh
