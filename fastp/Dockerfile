FROM continuumio/miniconda:latest

RUN apt-get --allow-releaseinfo-change update && apt-get install -y procps && rm -rf /var/lib/apt/lists/*
RUN conda install -c bioconda fastp=0.12.4
