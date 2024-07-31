set dotenv-load := true

# List recipes
list:
    @just --list --unsorted

# Prepare with given pbp package version
prepare version:
  echo "export PBP_VERSION={{version}}"  >  .env

# Initial setup
setup:
    #!/usr/bin/env bash
    set -eu
    cat .env
    python3.11 -m venv venv
    source venv/bin/activate
    python -m pip install pip-tools

# Update requirements.in and requirements.txt
requirements:
    #!/usr/bin/env bash
    set -eu
    echo "mbari-pbp==$PBP_VERSION" > requirements.in
    source venv/bin/activate
    pip-compile

# Create and push git tag
tag-and-push:
  git tag v${PBP_VERSION}
  git push origin v${PBP_VERSION}

# List most recent git tags
tags:
    git tag -l | sort -V | tail

clean:
    rm -rf venv
