FROM --platform=x86_64 mambaorg/micromamba:latest


# create conda environment named "sensv-env"
RUN micromamba create -n sensv-env -c bioconda -c conda-forge sensv python=3.7 make

ENV PATH=$PATH:/opt/conda/envs/sensv-env/bin
## post setup
RUN cd /opt/conda/envs/sensv-env/bin/ && make post_link
