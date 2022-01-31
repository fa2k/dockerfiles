FROM rocker/r-ver:3.6.2

# Libraries required for R packages
RUN apt-get update && apt-get install -y curl zlib1g-dev
# R packages from docs on github
RUN Rscript -e 'install.packages(c("data.table", \
                   "futile.logger", \
                   "ggplot2", \
                   "optparse", \
                   "plyr", \
                   "readr", \
                   "reshape2", \
                   "scales", \
                   "viridis", \
                   "yaml"))'
RUN curl https://raw.githubusercontent.com/roblanf/minion_qc/master/MinIONQC.R > /usr/bin/MinIONQC.R && chmod +x /usr/bin/MinIONQC.R
