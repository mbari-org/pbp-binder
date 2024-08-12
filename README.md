# PBP for mybinder.org

> [!NOTE]
> - Under testing/tuning.

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/mbari-org/pbp-binder/v1.2.0b2)

Latest version: **v1.2.0b2**

Access this Binder at the following URL

https://mybinder.org/v2/gh/mbari-org/pbp-binder/v1.2.0b2

## Setup and update

- Initial setup:
    ```
    python3.11 -m venv venv
    source venv/bin/activate
    python -m pip install pip-tools
    ```

- Review/update `requirements.in` to indicate the mbari-pbp version to use,
  and run `pip-compile` to generate/update `requirements.txt`:
     ```
     vi requirements.in 
     source venv/bin/activate
     pip-compile
     ```

- Commit and push.

## Using just

Using [`just`](https://just.systems), the general procedure is captured in 
various recipes in [`justfile`](justfile), so one can proceed as follows:

```
just setup                   # one-off setup
just prepare <pbp_version>   # captures given version in .env for other recipes to use
just update-requirements     # updates requirements.in and requirements.txt
just tag-and-push            # creates git tag and pushes it
```
