<!--
NOTE: Do not README.md, but README.IN.md.
The former is generated from the latter.
--> 

# PBP for mybinder.org

> [!NOTE]
> - Under testing/tuning.

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/mbari-org/pbp-binder/{PBP_BINDER_VERSION})

Latest version: **{PBP_BINDER_VERSION}**

Access this Binder at the following URL

https://mybinder.org/v2/gh/mbari-org/pbp-binder/{PBP_BINDER_VERSION}

## Setup and update

(See below for a more streamlined process using [`just`](https://just.systems).)

- Initial setup:
    ```
    python3.11 -m venv venv
    source venv/bin/activate
    python -m pip install pip-tools
    ```

- Determine the version for pbp-binder.
  Assuming that `$PBP_BINDER_VERSION` captures such version.

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
- Create and push resulting `v$PBP_BINDER_VERSION` tag.

## Using just

Using `just`, the general procedure is captured in various recipes in
[`justfile`](justfile), so one can proceed as follows:

```
# one-off setup:
just setup
```

```
# Capture settings in .env for other recipes to use:                                             
just prepare <pbp_version> <pbp_binder_version_suffix>
# (<pbp_binder_version_suffix> is optional)
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
