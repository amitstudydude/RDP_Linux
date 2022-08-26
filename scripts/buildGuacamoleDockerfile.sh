cat >Dockerfile <<EOF
FROM ubuntu
RUN apt update && DEBIAN_FRONTEND=noninteractive apt install -y --no-install-recommends libssh2-1-dev freerdp2-dev libossp-uuid-dev libtool-bin libpng-dev libjpeg-turbo8-dev libcairo2-dev  openjdk-8-jdk libssh2-1-dev freerdp2-dev sudo wget curl && export GUACAMOLE_HOME=/etc/guacamole && wget https://downloads.apache.org/tomcat/tomcat-9/v9.0.65/bin/apache-tomcat-9.0.65.tar.gz &&  mkdir /opt/tomcat && sudo tar -xzf apache-tomcat-9.0.65.tar.gz -C /opt/tomcat/ && rm apache-tomcat-9.0.65.tar.gz && mv /opt/tomcat/apache-tomcat-9.0.65 /opt/tomcat/tomcatapp && chmod +x /opt/tomcat/tomcatapp && rm -rf  /opt/tomcat/tomcatapp/webapps && mkdir -p /opt/tomcat/tomcatapp/webapps/ROOT && cd /opt/tomcat/tomcatapp/webapps/ROOT && wget https://downloads.apache.org/guacamole/1.4.0/binary/guacamole-1.4.0.war  && jar -xvf *.war  && rm *.war && mkdir -p /etc/guacamole/{extensions,lib} && cd /etc/guacamole && wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/guacamole.properties && wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/user-mapping.xml  && sed -i 's/localhost/172.17.0.1/g' /etc/guacamole/user-mapping.xml  && sed -i 's/127.0.0.1/172.17.0.1/g' /etc/guacamole/guacamole.properties  && apt clean && apt autoremove && rm -rf /var/lib/apt/lists/* 
EXPOSE 8080/tcp
CMD /opt/tomcat/tomcatapp/bin/catalina.sh run
EOF
#docker build - < Dockerfile
docker built -t guacamole .

    
