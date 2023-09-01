FROM oraclelinux:8

COPY bcl-convert-4.*.rpm /tmp/bcl-convert.rpm
RUN yum install -y procps
RUN yum localinstall -y /tmp/bcl-convert.rpm && \
    rm /tmp/bcl-convert.rpm && \
    yum clean all && \
    rm -rf /var/cache/yum

ENTRYPOINT ["/usr/bin/bcl-convert"]
