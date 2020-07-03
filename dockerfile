FROM registry.access.redhat.com/ubi8/ubi:8.1
MAINTAINER Harsh Raj Srivastava

USER root
ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH
RUN mkdir -p "$CATALINA_HOME"
# Update image
COPY jdk-8u251-linux-x64.rpm .
COPY apache-tomcat-8.5.56.tar.gz .
RUN rpm -ivh jdk-8u251-linux-x64.rpm
RUN tar xvf apache-tomcat-8.5.56.tar.gz -C ${CATALINA_HOME} --strip-components=1
EXPOSE 8009
WORKDIR ${CATALINA_HOME}
CMD ["catalina.sh", "run"]
