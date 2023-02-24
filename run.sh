#!/usr/bin/env bash
docker run \
  --name docker4you \
  --rm -it \
  -v ${HOME}/GitHub:/opt/GitHub docker4you
# Annotation:
# -v ${HOME}/GitHub:/opt/GitHub \   to mount your local file system into the container
# --rm: deletes the container after exiting
# --it: interactive terminal
