# Build bamtools
FROM --platform=x86_64 ubuntu:22.04
RUN apt-get update && apt-get install -y build-essential cmake git zlib1g-dev
RUN cd / && \
    git clone https://github.com/pezmaster31/bamtools.git &&  \
    cd bamtools && mkdir build && cd build && \
    cmake -DCMAKE_INSTALL_PREFIX=/usr .. && make && \
    make install

CMD ["/usr/bin/bamtools"]
