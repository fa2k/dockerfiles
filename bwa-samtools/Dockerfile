FROM continuumio/miniconda:latest

RUN apt-get --allow-releaseinfo-change update && apt-get install -y procps libncurses5 && rm -rf /var/lib/apt/lists/*
RUN conda install -c bioconda bwa=0.7.17 samtools=1.3.1
