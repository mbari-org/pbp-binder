2024-08

- now `v1.2.0b2` with parameter fix in the notebook.
- Updates to use mbari-pbp 1.2.0.
    - added `HMB_generation_one_day_simple_api.ipynb` (as prepared in separate JupyterLab env) 
    - `tag-and-push` recipe adjusted to accept a suffix, eg: `just tag-and-push b1`, 
       to create a tag like `v1.2.0b1` indicating the PBP version itself, and pbp-binder version.

2024-07

- added notebook for NRS11 exercise
    - including input files to have a self-contained example (as in original pbp repo)
    - Note: adjusting notebook initially put together in Colab.
    - TODO include JSON generation

- initial version