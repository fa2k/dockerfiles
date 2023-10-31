FROM continuumio/miniconda3:latest
RUN apt-get update && apt-get install -y unzip

RUN conda create -n spipe -y  python=3.10
# Acitvate environment
ENV PATH=/opt/conda/envs/spipe:$PATH

# Install pipeline
COPY ParseBiosciences-Pipeline.1.1.2.zip /opt
RUN cd /opt && unzip ParseBiosciences-Pipeline.1.1.2.zip
RUN cd /opt/ParseBiosciences-Pipeline.1.1.2 && \
        bash ./install_dependencies_conda.sh -i -y && \
        bash ./install_TCR.sh -i -y && \
	pip install --no-cache-dir ./

RUN split-pipe


