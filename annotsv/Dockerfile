FROM centos:7
ARG VER=3.0.9
ENV ANNOTSV=/opt/AnnotSV-$VER

RUN curl --location -o /usr/local/bin/bedtools https://github.com/arq5x/bedtools2/releases/download/v2.30.0/bedtools.static.binary && \
            chmod 755 /usr/local/bin/bedtools

RUN yum install -y make tcl unzip bzip2 bzip2-devel xz-devel zlib-devel gcc

RUN mkdir /usr/src/bcftools && cd  /usr/src/bcftools && curl --location \
                    https://github.com/samtools/bcftools/releases/download/1.13/bcftools-1.13.tar.bz2 | tar jx && \
                    cd bcftools-1.13 && ./configure && make && make install && rm -r /usr/src/bcftools

RUN bash -c "cd /opt && curl --location https://github.com/lgmgeo/AnnotSV/archive/refs/tags/v${VER}.tar.gz | tar zx"
RUN cd $ANNOTSV && make PREFIX=. install
RUN cd $ANNOTSV && make PREFIX=. install-human-annotation

ENV PATH="$ANNOTSV/bin:$PATH"
