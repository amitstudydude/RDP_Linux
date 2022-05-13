cat >Dockerfile <<EOF
FROM ubuntu:latest
RUN yes | unminimize && apt update && apt install sudo wget ssh tmate unzip -y && service ssh start && yes root | passwd root  && echo "PasswordAuthentication yes" > /etc/ssh/sshd_config && echo "PermitUserEnvironment yes" >> /etc/ssh/sshd_config  && echo "PermitRootLogin yes" >> /etc/ssh/sshd_config && service ssh start
RUN wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb && sudo apt install --assume-yes --fix-broken ./*.deb
RUN useradd -m user && yes user | passwd user && usermod -a -G sudo,adm,chrome-remote-desktop user
#RUN wget --no-check-certificate https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip && unzip *.zip  && ls 
#RUN ./ngrok authtoken 26tMe4najGriSTiFSCpzVi56UzF_Gdsp5taJ7CeA4PGVrTVj 
EOF
docker build - < Dockerfile





sudo docker run --privileged -v /run/systemd/system:/run/systemd/system -v /bin/systemctl:/bin/systemctl -v /var/run/dbus/system_bus_socket:/var/run/dbus/system_bus_socket -it ubuntu:latest systemctl
