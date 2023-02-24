# TGIF Docker4You

DKRZ TGIF: 2023-02-24

## run mamba docker containter

Get a public docker image for mamba from DockerHub:

https://hub.docker.com/r/condaforge/mambaforge 

Pull mamba image:

    docker pull condaforge/mambaforge

Start mamba container:

    docker run --rm -it condaforge/mambaforge

## build your own docker container: docker4you

build:

    ./build.sh

run:

    ./run.sh

## create conda spec file in linux container

Do the following inside the running docker4you container.

Get source of atmodat data checker:

    cd /opt/GitHub
    git clone https://github.com/AtMoDat/atmodat_data_checker.git
    cd atmodat_data_checker

Create conda environment using mamba:

    mamba env create
    conda activate atmodat

Update the conda spec file:

    conda list --explicit > spec-file_linux64.txt 

Check the differences:

    git diff
