cat >Dockerfile <<EOF
FROM ubuntu:20.04
RUN unminimize \
    apt update \
    apt install sudo wget ssh tmate unzip \
    
    service ssh start \
EOF
docker build - < Dockerfile
