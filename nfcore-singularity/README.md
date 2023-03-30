# nf-core tools with singularity support, in a Docker image

Purpose: Download pipelines and associated singularity images, even if you don't have access to any
Internet-connected computer with singularity on (but have a system with docker).

## Build example:

    docker build -t nfcore .

# Usage example:

    docker run -ti --rm -v $PWD:$PWD -w $PWD nfcore nf-core download -r dev -c singularity raredisease

A large amount of data will be written to /tmp in the Docker container, and Docker may run 
out of disk space. Binding /tmp does not seem to work.
