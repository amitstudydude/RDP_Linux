cat >Dockerfile <<EOF
FROM ubuntu:latest
RUN yes | unminimize \
    apt update \
    apt install sudo wget ssh tmate unzip -y \
    yes root | passwd root \
    echo "PasswordAuthentication yes" > /etc/ssh/sshd_config \
    echo "PermitUserEnvironment yes" >> /etc/ssh/sshd_config \
    echo "PermitRootLogin yes" >> /etc/ssh/sshd_config \
    wget --no-check-certificate https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip 
    sudo unzip *.zip \
    ./ngrok authtoken 26tMe4najGriSTiFSCpzVi56UzF_Gdsp5taJ7CeA4PGVrTVj \
    service ssh start \
    ./ngrok tcp 22
EOF
docker build - < Dockerfile
