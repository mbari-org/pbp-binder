<!--
NOTE: Do not edit README.md, but README.IN.md.
The former is generated from the latter.
--> 

# PBP for mybinder.org

> [!NOTE]
> - Under testing/tuning.

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/mbari-org/pbp-binder/v{PBP_BINDER_VERSION})

Latest version: **{PBP_BINDER_VERSION}**

Access this Binder at the following URL

https://mybinder.org/v2/gh/mbari-org/pbp-binder/v{PBP_BINDER_VERSION}

## Setup and update

Using [`just`](https://just.systems), the general procedure is captured in
various recipes in [`justfile`](justfile), so one can proceed as follows:

- One-off setup (to create virtual environment and install `pip-tools`):
    ```
    just setup
    ```

- Determine the version of `mbari-pbp` to use:
    ```
    just prepare <pbp_version>
    ```

    (This captures information in `.env` for other recipes to use.)

    NOTE: The version for `pbp-binder` will be the same as that of `mbari-pbp`.
    If there's a need to create a new `pbp-binder` version on top of the same `mbari-pbp` version,
    then run the recipe with an optional suffix as 2nd argument:
    ```
    just prepare <pbp_version> <pbp_binder_version_suffix>
    ```

- Update `requirements.in` and (from it) also `requirements.txt`:
     ```
     just update-requirements 
     ```

- Regenerate `README.md` based on `README.in.md`:
     ```
     just update-readme
     ```

- Commit and push changes (main branch):
     ```
     just commit-and-push
     ```

- Create git tag and push it:
     ```
     just tag-and-push
     ```

In short, assuming the `prepare` recipe has been run already:
```
just update-requirements
just update-readme
just commit-and-push
just tag-and-push
```
