FROM registry.access.redhat.com/ubi8/ubi:8.1

MAINTAINER Harsh Raj <harshr@newtglobal.com>

RUN yum -y  update

RUN yum install -y java-11-openjdk-devel

RUN java --version

RUN git --version
