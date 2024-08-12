2024-08

- `prepare` recipe adjusted to also accept a suffix to create the tag for pbp-binder itself,
  eg: `prepare 1.2.0 b2` prepares an env var `PBP_BINDER_TAG` with value `1.2.0b2`.
  This env var is used by other recipes, including one to regenerate `README.md`
  (now created from `README.in.md`), and to actually create and push the tag
- now `v1.2.0b2` with parameter fix in the notebook.
- Updates to use mbari-pbp 1.2.0.
    - added `HMB_generation_one_day_simple_api.ipynb` (as prepared in separate JupyterLab env) 

2024-07

- added notebook for NRS11 exercise
    - including input files to have a self-contained example (as in original pbp repo)
    - Note: adjusting notebook initially put together in Colab.
    - TODO include JSON generation

- initial version