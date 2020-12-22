FROM rocker/r-ver:3.6.2

# Libraries required for R packages
RUN apt-get update && apt-get install -y libcurl4-openssl-dev libssl-dev zlib1g-dev libpng-dev pkg-config

# Needed for install.versions
RUN Rscript -e 'install.packages("versions")'

# Install required R packages at specific versions
RUN Rscript -e 'require(versions); install.versions("plyr", "1.8.6")'
RUN Rscript -e 'require(versions); install.versions("dplyr", "1.0.2")'
RUN Rscript -e 'require(versions); install.versions("future", "1.19.1")'
RUN Rscript -e 'require(versions); install.versions("mixtools", "1.2.0")'

# Need to install multtest with BioConductor in order to successfully install Seurat
# BioConductor 3.10 seems to work, for the purpose of installing multtest.
RUN Rscript -e 'install.packages("BiocManager"); BiocManager::install(version="3.10"); BiocManager::install("multtest");'

# Seurat
# Version 3.2.1 is the one we need. If requestion 3.2.1, it tries to fetch
# date = 2020-09-16, but that leads to a HTTP 500 error, so we use the next day.
RUN Rscript -e 'require(versions); install.dates("Seurat", "2020-09-17")'

