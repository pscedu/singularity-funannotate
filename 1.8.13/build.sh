#!/bin/bash

IMAGE=singularity-funannotate-1.8.13.sif
DEFINITION=Singularity

sudo singularity build $IMAGE $DEFINITION
