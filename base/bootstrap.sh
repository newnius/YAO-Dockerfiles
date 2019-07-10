#!/bin/bash

if ! [[ -z "${repo}" ]]; then
  if [[ -z "${branch}" ]]; then
    git clone $repo /workspace
  else
    git clone -b $branch $repo /workspace
  fi
fi

if [ -d /workspace ]; then
  cd /workspace
fi

if ! grep -q *.py per_process_gpu_memory_fraction; then
  echo "Resourse usage limitation not set!"
  exit 1
fi

# use eval because commands likes `key=value command` would cause file not found error when using $@, but this eval will ruin current environment
eval $@

