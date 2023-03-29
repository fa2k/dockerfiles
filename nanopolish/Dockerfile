FROM --platform=x86_64 ubuntu:22.04
RUN apt-get update && apt-get install -y python3 python3-pip git build-essential make wget zlib1g-dev libbz2-dev

RUN cd / && git clone --recursive https://github.com/jts/nanopolish.git && cd nanopolish && make
RUN cd /nanopolish && pip install -r scripts/requirements.txt
RUN wget https://github.com/nanoporetech/vbz_compression/releases/download/1.0.2/ont-vbz-hdf-plugin_1.0.2-1.bionic_amd64.deb && \
    apt install -y ./ont-vbz-hdf-plugin_1.0.2-1.bionic_amd64.deb
