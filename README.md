# PBP for mybinder.org

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/mbari-org/pbp-binder/HEAD)

Based on: https://github.com/binder-examples/requirements

Access this Binder at the following URL

https://mybinder.org/v2/gh/mbari-org/pbp-binder/HEAD

## Setup and update

- Initial setup:
    ```
    python3.10 -m venv venv
    source venv/bin/activate
    python -m pip install pip-tools
    ```

- Review/update `requirements.in` to indicate the mbari-pbp version to use,
  and run `pip-compile` to generate/update `requirements.txt`:
     ```
     vi requirements.in 
     pip-compile
     ```

- Commit and push.
