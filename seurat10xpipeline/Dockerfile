FROM rocker/r-ver:3.6.2

# Libraries required for R packages
RUN apt-get update && apt-get install -y libcurl4-openssl-dev libssl-dev zlib1g-dev libpng-dev

# Install required R packages at specific versions
RUN Rscript -e 'install.packages("plyr", version="1.8.6")'
RUN Rscript -e 'install.packages("dplyr", version="1.0.2")'
RUN Rscript -e 'install.packages("future", version="1.19.1")'

# Need to install multtest with BioConductor in order to successfully install Seurat
RUN Rscript -e 'install.packages("BiocManager"); BiocManager::install(); BiocManager::install("multtest");'
# Seurat
RUN Rscript -e 'install.packages("Seurat", version="3.2.1")'

# mixtools
RUN Rscript -e 'install.packages("mixtools", version="1.2.0")'
