cat >Dockerfile <<EOF
FROM ubuntu:latest
RUN yes | unminimize && apt update && apt install sudo wget ssh tmate unzip -y && service ssh start && yes root | passwd root  && echo "PasswordAuthentication yes" > /etc/ssh/sshd_config && echo "PermitUserEnvironment yes" >> /etc/ssh/sshd_config  && echo "PermitRootLogin yes" >> /etc/ssh/sshd_config && service ssh start
RUN wget --no-check-certificate https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip && unzip *.zip  && ls 
RUN ./ngrok authtoken 26tMe4najGriSTiFSCpzVi56UzF_Gdsp5taJ7CeA4PGVrTVj && ./ngrok tcp 22
EOF
docker build - < Dockerfile
