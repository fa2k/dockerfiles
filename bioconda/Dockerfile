FROM continuumio/miniconda3:latest
RUN conda config --add channels defaults && \
    conda config --add channels conda-forge && \
    conda config --add channels bioconda && \
    conda install pysam pandas numpy

