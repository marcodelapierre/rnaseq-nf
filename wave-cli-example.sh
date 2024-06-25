#!/usr/bin/bash

# get container URLs for SIF images
nextflow inspect . -profile waveSing

wave --conda-package bioconda::multiqc=1.17 --singularity --freeze

# get container URLs for Docker images
nextflow inspect . -profile waveSingPull

wave --conda-package bioconda::multiqc=1.17 --freeze
