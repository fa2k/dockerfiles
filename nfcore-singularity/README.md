# nf-core tools in Docker, with singularity

Purpose: Download pipeline with singularity images, even if you don't have access to any
Internet-connected computer with singularity on.

## Build example:

    docker build -t nfcore .

# Usage example:

    docker run -ti --rm -v $PWD:$PWD -w $PWD nfcore nf-core download -r dev -c singularity raredisease






