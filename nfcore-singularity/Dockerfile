FROM --platform=x86_64 rockylinux:8

# Install required packages for nf-core
RUN dnf -y install epel-release wget which
# now that we have EPEL - can install apptainer (singularity) from it
RUN dnf -y install apptainer
ENV PATH="/root/miniconda3/envs/nfcore/bin:${PATH}"
ARG PATH="/root/miniconda3/envs/nfcore/bin:${PATH}"

# Install Miniconda
RUN wget \
    https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh \
    && mkdir /root/.conda \
    && bash Miniconda3-latest-Linux-x86_64.sh -b \
    && rm -f Miniconda3-latest-Linux-x86_64.sh

# Enable bioconda as described on the Bioconda
RUN /root/miniconda3/bin/conda config --add channels defaults && \
    /root/miniconda3/bin/conda config --add channels bioconda && \
    /root/miniconda3/bin/conda config --add channels conda-forge && \
    /root/miniconda3/bin/conda config --set channel_priority strict

# Install nf-core tools
RUN /root/miniconda3/bin/conda create -n nfcore python=3.8 nf-core nextflow
