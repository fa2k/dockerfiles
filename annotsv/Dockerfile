FROM centos:7
ARG VER=3.0.9
ENV ANNOTSV=/opt/AnnotSV-$VER

RUN yum install -y make tcl unzip

RUN bash -c "cd /opt && curl --location https://github.com/lgmgeo/AnnotSV/archive/refs/tags/v${VER}.tar.gz | tar zx"
RUN cd $ANNOTSV && make PREFIX=. install
RUN cd $ANNOTSV && make PREFIX=. install-human-annotation

ENV PATH="$ANNOTSV/bin/AnnotSV:$PATH"
