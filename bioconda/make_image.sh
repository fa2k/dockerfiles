#!/bin/bash

VERSION=1.0

# 1. Run on Internet-connected computer with docker installed:
docker build -t marius-bioconda:$VERSION - < Dockerfile
docker save -o marius-bioconda-$VERSION.tar marius-bioconda:$VERSION

