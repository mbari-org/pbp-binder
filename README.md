# PBP for mybinder.org

> [!NOTE]
> - Under testing/tuning.

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/mbari-org/pbp-binder/1.2.0b2)

Latest version: **1.2.0b2**

Access this Binder at the following URL

https://mybinder.org/v2/gh/mbari-org/pbp-binder/1.2.0b2

## Setup and update

(See below for a more streamlined process using [`just`](https://just.systems).)

- Initial setup:
    ```
    python3.11 -m venv venv
    source venv/bin/activate
    python -m pip install pip-tools
    ```

- Determine the tag for pbp-binder.
  Assuming that `$PBP_BINDER_TAG` captures such tag.

- Regenerate `README.md` based on `README.in.md`.
  (see justfile for the recipe).

- Review/update `requirements.in` to indicate the mbari-pbp version to use,
  and run `pip-compile` to generate/update `requirements.txt`:
     ```
     vi requirements.in 
     source venv/bin/activate
     pip-compile
     ```

- Do regular commit to `main` and push it.
- Create and push resulting `$PBP_BINDER_TAG` tag.

## Using just

Using `just`, the general procedure is captured in various recipes in
[`justfile`](justfile), so one can proceed as follows:

```
# one-off setup:
just setup
```

```
# Capture settings .env for other recipes to use:                                             
just prepare <pbp_version> <pbp_binder_version_suffix>
```

```
# Update requirements.in and requirements.txt:
just update-requirements
```

```
# Regenerate README.md (based on README.in.md and .env):
just update-readme
```

```
# Commit and push changes (main branch)
just commit-and-push
```

```
# Create git tag and push it
just tag-and-push
```
