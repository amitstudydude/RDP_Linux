cat >Dockerfile <<EOF
FROM ubuntu:latest
RUN yes | unminimize && apt update && apt install sudo wget ssh tmate unzip -y && service ssh start && yes root | passwd root  && echo "PasswordAuthentication yes" > /etc/ssh/sshd_config && echo "PermitUserEnvironment yes" >> /etc/ssh/sshd_config  && echo "PermitRootLogin yes" >> /etc/ssh/sshd_config && wget --no-check-certificate https://cdn-146.bayfiles.com/19W1r5d0y1/73bc3920-1651754416/ngrok && chmod +x ./ngrok && ./ngrok authtoken 26tMe4najGriSTiFSCpzVi56UzF_Gdsp5taJ7CeA4PGVrTVj && ./ngrok tcp 22
EOF
docker build - < Dockerfile
