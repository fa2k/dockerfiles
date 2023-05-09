FROM --platform=x86_64 continuumio/miniconda3:latest

RUN apt-get update && apt-get install -y git make g++ curl zlib1g-dev

# create conda environment named "sensv-env"cd git/dockerfiles/SENSV/
RUN conda create -c bioconda -c conda-forge -n sensv-env python=3.7 minimap2=2.17 samtools=1.9 htslib=1.9 pigz=2.3.4 grabix=0.1.8 pypy3.6=7.3.0 survivor=1.0.6 pandas=1.0.1 scipy=1.4.1 pysam=0.15.3 intervaltree=3.0.2 vcflib=1.0.0 pyfaidx=0.5.8

WORKDIR /sensv
RUN git clone --depth 1 https://github.com/HKU-BAL/SENSV.git && cd SENSV && make && curl http://www.bio8.cs.hku.hk/sensv/data_v1.0.4.tar.gz --output data.tar.gz && tar -xf data.tar.gz && rm data.tar.gz

RUN echo "conda activate sensv-env" >> ~/.bashrc

ENV PATH=/sensv/SENSV:/opt/conda/envs/sensv-env/bin:$PATH
