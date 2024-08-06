# PBP for mybinder.org

> [!NOTE]
> - In general, under testing/tuning.
> - To be updated with new simplified API introduced in mbari-pbp 1.1,
>   (see [ChangeLog.md](https://github.com/mbari-org/pbp/blob/main/ChangeLog.md)).


[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/mbari-org/pbp-binder/HEAD)

Based on: https://github.com/binder-examples/requirements

Access this Binder at the following URL

https://mybinder.org/v2/gh/mbari-org/pbp-binder/HEAD

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
