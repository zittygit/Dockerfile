FROM centos:7
MAINTAINER kitty <zhangzy65@sysu.mail2.edu.cn>
  
ENV JDK_DOWNLOAD_LINK "http://download.oracle.com/otn-pub/java/jdk/8u181-b13/96a7b8442fe848ef90c96a2fad6ed6d1/jdk-8u181-linux-x64.rpm" 
ENV IDEA_DOWNLOAD_LINK https://download.jetbrains.8686c.com/idea/ideaIC-2018.2.1-no-jdk.tar.gz
ENV CLION_DOWNLOAD_LINK https://download.jetbrains.8686c.com/cpp/CLion-2018.2.1.tar.gz

#### install jdk and tools
RUN yum -y update && \
 yum -y install wget && \
 yum group install "Development Tools" && \
 wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=xxx; oraclelicense=accept-securebackup-cookie" "$JDK_DOWNLOAD_LINK" -O /tmp/jdk-8u181-linux-x64.rpm && \
 yum -y install /tmp/jdk-8u181-linux-x64.rpm && \
 rm -f /tmp/jdk-8u181-linux-x64.rpm && \
 #图形库
 yum install -y urw-fonts libXtst libXrender && \
 yum install -y which && \
 yum clean all
ENV JAVA_HOME /usr/java/latest

#### install IDEA
RUN wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=xxx; oraclelicense=accept-securebackup-cookie" "$IDEA_DOWNLOAD_LINK" -O /tmp/ideaIC-2018.2.1-no-jdk.tar.gz && \
    tar zxvf /tmp/ideaIC-2018.2.1-no-jdk.tar.gz -C /opt/ && \
	rm -f /tmp/ideaIC-2018.2.1-no-jdk.tar.gz && \
	sed -i "N;4 a alias idea='/opt/idea-IC-182.3911.36/bin/idea.sh'" ~/.bashrc && \
	yum clean all

#### install Clion	
RUN wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=xxx; oraclelicense=accept-securebackup-cookie" "$IDEA_DOWNLOAD_LINK" -O /tmp/CLion-2018.2.1.tar.gz && \
    tar zxvf /tmp/CLion-2018.2.1.tar.gz -C /opt/ && \
	rm -f /tmp/CLion-2018.2.1.tar.gz && \
	sed -i "N;4 a alias clion='/opt/clion-2018.2.1/bin/clion.sh'" ~/.bashrc && \
	yum clean all
	
#### install X forwarding
RUN yum install -y xorg-x11-xauth xorg-x11-fonts-* xorg-x11-font-utils xorg-x11-fonts-Type1 && \
    yum install -y openssh-server && \	
	ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key && \
	ssh-keygen -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key && \
	ssh-keygen -t ed25519 -f /etc/ssh/ssh_host_ed25519_key && \
	echo 'root:love' | chpasswd && \
	sed -i 's/#PermitRootLogin yes/PermitRootLogin yes/' /etc/ssh/sshd_config && \
	sed -i 's/#X11UseLocalhost yes/X11UseLocalhost no/' /etc/ssh/sshd_config && \
	sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd && \
	echo "export VISIBLE=now" >> /etc/profile

CMD ["/usr/sbin/sshd", "-D"]
