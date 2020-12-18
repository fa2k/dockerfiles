#!/bin/bash

VERSION=1.0

# 1. Run on Internet-connected computer with docker installed:
docker build -t seurat10xpipeline:$VERSION - < Dockerfile
docker save -o seurat10xpipeline-$VERSION.tar

# To run it: (replace $VERSION with the image version)
#docker run -v $PWD:$PWD -w $PWD --rm seurat10xpipeline:$VERSION Rscript pipeline_saga_3_mixmodels.r


# --- Singularity ---

# Transfer .tar image if necessary
# 2. Run on any computer with reasonably recent singularity installed
singularity build seurat10xpipeline-$VERSION.sif docker-archive://seurat10xpipeline-$VERSION.tar

# To use the image to run the pipeline:
singularity run seurat10xpipeline-$VERSION.sif Rscript pipeline_saga_3_mixmodels.r
