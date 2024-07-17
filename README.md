# PBP for mybinder.org

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/mbari-org/pbp-binder/HEAD)

Based on: https://github.com/binder-examples/requirements

Access this Binder at the following URL

https://mybinder.org/v2/gh/mbari-org/pbp-binder/HEAD

## Setup

```
git clone https://github.com/binder-examples/requirements.git pbp-binder
cd pbp-binder
rm -rf .git
```
```
python3.10 -m venv venv
source venv/bin/activate
python -m pip install pip-tools
vi requirements.in    # to indicate mbari-pbp==x.y.z
pip-compile           # to generate requirements.txt
```
