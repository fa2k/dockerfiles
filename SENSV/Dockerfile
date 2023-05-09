FROM --platform=x86_64 continuumio/miniconda3:latest

RUN apt-get update && apt-get install libssl-dev

# create conda environment named "sensv-env"
RUN conda create -n sensv-env -c bioconda -c conda-forge sensv python=3.7 make

ENV PATH=$PATH:/opt/conda/envs/sensv-env/bin
## post setup
RUN cd /opt/conda/envs/sensv-env/bin/ && make post_link
