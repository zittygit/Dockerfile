FROM centos:7

MAINTAINER kitty <zhangzy65@sysu.mail2.edu.cn>  
ENV DOWNLOAD_LINK "http://download.oracle.com/otn-pub/java/jdk/10.0.2+13/19aef61b38124481863b1413dce1855f/jdk-10.0.2_linux-x64_bin.rpm"   

RUN yum -y update && \
 yum -y install wget && \
 wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=xxx; oraclelicense=accept-securebackup-cookie" "$DOWNLOAD_LINK" -O /tmp/jdk-10.0.2_linux-x64_bin.rpm && \
 yum -y install /tmp/jdk-8-linux-x64.rpm && \
 rm -f /tmp/jdk-10.0.2_linux-x64_bin.rpm && \
 yum clean all

 ENV JAVA_HOME /usr/java/latest