#!/bin/bash

IMAGE=singularity-funannotate-1.8.9.sif
DEFINITION=Singularity

sudo singularity build $IMAGE $DEFINITION
