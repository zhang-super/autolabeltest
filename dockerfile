FROM nvidia/cuda:9.0-cudnn7-devel-centos7
RUN yum -y update
RUN yum install -y openssh-server
RUN yum install -y net-tools
RUN yum install -y iputils
RUN yum install -y vim
RUN yum install -y sudo
RUN yum install -y epel-release
RUN yum install -y python-pip
RUN yum install -y wget
RUN yum install -y python2-devel
RUN yum install -y openssl-devel
RUN yum install -y zlib-devel
#RUN yum install –y mysql-devel
RUN python -m pip install --upgrade pip
RUN pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
RUN echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
RUN pip install numpy
RUN pip install tensorflow-gpu==1.8.0
RUN pip install opencv-python
RUN pip install lxml
RUN pip install pillow
RUN pip install subprocess32
RUN pip install matplotlib==2
RUN pip install keras
RUN pip install pydicom
RUN pip install cython
RUN yum install -y make
RUN pip install easydict
RUN pip install pandas
RUN yum install -y libSM-1.2.2-2.el7.x86_64
RUN yum install -y libXrender-0.9.10-1.el7.x86_64
RUN yum install -y libXext-1.3.3-3.el7.x86_64
