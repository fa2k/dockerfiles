FROM continuumio/miniconda3:latest
RUN apt-get update && apt-get install -y unzip

# Create environment and configure conda to not activate base
RUN conda create -n spipe -y  python=3.10 && \
        conda clean -afy && \
        conda config --set auto_activate_base false

# Acitvate environment
# .bashrc is used for root in docker; path solution is used for others
RUN echo "conda activate spipe" >> ~/.bashrc
ENV PATH=/opt/conda/envs/spipe/bin:$PATH

# Install pipeline. Use a bash shell to make sure that the conda environment is activated
COPY ParseBiosciences-Pipeline.1.1.2.zip /opt
RUN cd /opt && unzip ParseBiosciences-Pipeline.1.1.2.zip && \
        cd /opt/ParseBiosciences-Pipeline.1.1.2 && \
        bash -c "source ~/.bashrc && \
        conda activate spipe && \
        bash ./install_dependencies_conda.sh -i -y && \
        bash ./install_TCR.sh -i -y && \
	pip install --no-cache-dir ./ && \
        rm -rf /opt/ParseBiosciences-Pipeline.1.1.2.zip"

# Fis issue: Failed to parse excel: Pandas requires version '3.0.10' or newer of 'openpyxl'
RUN bash -c "source ~/.bashrc && \
        conda activate spipe && \
        pip install --upgrade openpyxl"

RUN split-pipe
