#!/bin/bash

if ! [[ -z "${repo}" ]]; then
  if [[ -z "${branch}" ]]; then
    git clone $repo workspace
  else
    git clone -b $branch $repo /workspace
  fi
fi

cd /workspace

$@

