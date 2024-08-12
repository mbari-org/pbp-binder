set dotenv-load := true

# List recipes
list:
    @just --list --unsorted

# Initial setup (virtualenv, pip-tools)
setup:
    #!/usr/bin/env bash
    set -eu
    cat .env
    python3.11 -m venv venv
    source venv/bin/activate
    python -m pip install pip-tools

# Prepare with given pbp package version and optional suffix for the pbp-binder tag
prepare pbp_version pbp_binder_version_suffix='':
    #!/usr/bin/env bash
    set -eu
    PBP_VERSION="{{pbp_version}}"
    PBP_BINDER_TAG="${PBP_VERSION}{{pbp_binder_version_suffix}}"
    echo "export PBP_VERSION=${PBP_VERSION}"              >  .env
    echo "export PBP_BINDER_TAG=${PBP_BINDER_TAG}"       >>  .env
    cat .env

# Update requirements.in and requirements.txt
update-requirements:
    #!/usr/bin/env bash
    set -eu
    echo "mbari-pbp==$PBP_VERSION" > requirements.in
    source venv/bin/activate
    pip-compile

# Regenerate README.md based on README.in.md and preparation
update-readme:
    sed "s/{PBP_BINDER_TAG}/$PBP_BINDER_TAG/g" README.in.md > README.md

# Commit and push changes (main branch)
commit-and-push:
    git commit -am "Update to $PBP_BINDER_TAG"
    git push origin main

# Create and push git tag
tag-and-push:
    git tag "$PBP_BINDER_TAG"
    git push origin "$PBP_BINDER_TAG"

# List most recent git tags
tags:
    git tag -l | sort -V | tail

clean:
    rm -rf venv
