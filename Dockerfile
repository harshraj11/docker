#Base image is RedHat 8
FROM registry.access.redhat.com/ubi8/ubi:8.1

MAINTAINER Harsh Raj <harshr@newtglobal.com>

#updating the system packages
RUN yum -y  update

#installing Java 11
RUN yum install -y java-11-openjdk-devel
RUN java --version

#installing git
RUN yum -y  install git 
RUN git --version

#installing Python3
RUN yum -y install python3
RUN python3 --version

#installing python add-on packages
RUN yum -y install python3-requests

#installing python2
RUN yum -y install python2

RUN yum --allowerasing install perl
perl -V:version

