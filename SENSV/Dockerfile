FROM --platform=x86_64 continuumio/miniconda3:latest

RUN apt-get update && apt-get install -y make g++ curl zlib1g-dev bsdextrautils

# create conda environment named "sensv-env"cd git/dockerfiles/SENSV/

RUN conda config --add channels defaults && \
    conda config --add channels bioconda && \
    conda config --add channels conda-forge

RUN conda create -n sensv-env python=3.7 minimap2=2.17 samtools=1.9 htslib=1.9 \
                    pigz=2.3.4 grabix=0.1.8 pypy3.6=7.3.0 survivor=1.0.6 pandas=1.0.1 \
                    numpy=1.19.5 scipy=1.4.1 pysam=0.15.3 intervaltree=3.0.2 vcflib=1.0.0 \
                    pyfaidx=0.5.8

ENV PATH=/SENSV:/opt/conda/envs/sensv-env/bin:$PATH

WORKDIR /
RUN conda run -n sensv-env bash -c " \
    curl -L --output v1.0.4.tar.gz https://github.com/HKU-BAL/SENSV/archive/refs/tags/v1.0.4.tar.gz && \
    tar zxf v1.0.4.tar.gz && \
    rm v1.0.4.tar.gz && \
    mv SENSV-1.0.4 SENSV && \
    cd SENSV && \
    sed -i 's/look -b/look/' src/scripts/get_seq_by_name.sh && \
    make && \
    curl http://www.bio8.cs.hku.hk/sensv/data_v1.0.4.tar.gz --output data.tar.gz && \
    tar -xf data.tar.gz && \
    rm data.tar.gz"

RUN echo "conda activate sensv-env" >> ~/.bashrc
