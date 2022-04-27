![Status](https://github.com/pscedu/singularity-funannotate/actions/workflows/main.yml/badge.svg)
![Status](https://github.com/pscedu/singularity-funannotate/actions/workflows/pretty.yml/badge.svg)
![Issue](https://img.shields.io/github/issues/pscedu/singularity-funannotate)
![forks](https://img.shields.io/github/forks/pscedu/singularity-funannotate)
![Stars](https://img.shields.io/github/stars/pscedu/singularity-funannotate)
![License](https://img.shields.io/github/license/pscedu/singularity-funannotate)

# singularity-funannotate
Singularity recipe for [funannotate](https://github.com/nextgenusfs/funannotate).

``` 
##########################################################################################
All Users:
  You will need to setup the funannotate databases using funannotate setup.
  The location of these databases on the file system is your decision and the
  location can be defined using the FUNANNOTATE_DB environmental variable.
  
  To set this up in your conda environment you can run the following:
    echo "export FUNANNOTATE_DB=/your/path" > /opt/conda/envs/funannotate/etc/conda/activate.d/funannotate.sh
    echo "unset FUNANNOTATE_DB" > /opt/conda/envs/funannotate/etc/conda/deactivate.d/funannotate.sh
  
  You can then run your database setup using funannotate:
    funannotate setup -i all
    
  Due to licensing restrictions, if you want to use GeneMark-ES/ET, you will need to install manually:
  download and follow directions at http://topaz.gatech.edu/GeneMark/license_download.cgi
  ** note you will likely need to change shebang line for all perl scripts:
    change: #!/usr/bin/perl to #!/usr/bin/env perl
     
      
Mac OSX Users:
  Augustus and Trinity cannot be properly installed via conda/bioconda at this time. However,
  they are able to be installed manually using a local copy of GCC (gcc-8 in example below).

  Install augustus using this repo:
    https://github.com/nextgenusfs/augustus
  
  To install Trinity v2.8.6, download the source code and compile using GCC/G++:
    wget https://github.com/trinityrnaseq/trinityrnaseq/releases/download/v2.8.6/trinityrnaseq-v2.8.6.FULL.tar.gz
    tar xzvf trinityrnaseq-v2.8.6.FULL.tar.gz
    cd trinityrnaseq-v2.8.6
    make CC=gcc-8 CXX=g++-8
    echo "export TRINITY_HOME=/your/path" > /opt/conda/envs/funannotate/etc/conda/activate.d/trinity.sh
    echo "unset TRINITY_HOME" > /opt/conda/envs/funannotate/etc/conda/deactivate.d/trinity.sh 

##########################################################################################
```

## Installing the container on Bridges 2
Copy the

* `SIF` file
* and the `funannotate` script

to `/opt/packages/funannotate/7`.

Copy the file `modulefile.lua` to `/opt/modulefiles/funannotate` as `7.lua`.

## Building the image using the recipe
### To build the image locally
Run the script `build.sh` to build image locally.

```
bash ./build.sh
```

### To build the image remotely
Run the script `rbuild.sh` to build image remotely.

```
bash ./rbuild.sh
```

## To run tests
To run the available tests, run the command

```
bash ./test.sh
```

---
Copyright © 2020-2022 Pittsburgh Supercomputing Center. All Rights Reserved.

The [Biomedical Applications Group](https://www.psc.edu/biomedical-applications/) at the [Pittsburgh Supercomputing Center](http://www.psc.edu) in the [Mellon College of Science](https://www.cmu.edu/mcs/) at [Carnegie Mellon University](http://www.cmu.edu).
