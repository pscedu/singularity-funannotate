#!/bin/bash

IMAGE=singularity-funannotate-1.8.13.sif
DEFINITION=Singularity

singularity build --remote $IMAGE $DEFINITION
