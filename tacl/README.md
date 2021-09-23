# TSD API CLIENT

## step 1

    docker build -t tacl .
    docker save -o tacl.tar tacl

## step 2

    singularity build tacl.sif docker-archive://tacl.tar
