#!/bin/bash

IMAGE=singularity-funannotate-1.8.15.sif
DEFINITION=Singularity

sudo singularity build $IMAGE $DEFINITION
