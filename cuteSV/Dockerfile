FROM --platform=x86_64 rockylinux:8
#RUN apt-get update && apt-get install -y python3-pip
#RUN pip3 install --break-system-packages cuteSV
RUN yum install -y python3-pip make gcc-c++ python3-devel zlib-devel bzip2-devel xz-devel
RUN pip3 install cuteSV==2.0.3
