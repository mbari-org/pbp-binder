2024-09

- Updates toward upcoming workshop:
    - using latest mbari-pbp 1.4.9
    - `NRS11/` updated with resources from our internal JupyterLab "gizo"
      including new `SoundCoopDemo_NRS11_Haruphone.ipynb`.
    - TODO: add `MB05/` 

2024-08

- `prepare` recipe adjusted to also accept an optional suffix to
  create the version for pbp-binder itself,
  eg: `prepare 1.2.2 b1` would set these env vars:
    - `PBP_VERSION` with first argument, so `1.2.2`.
    - `PBP_BINDER_VERSION` with value `1.2.2b1`.

    If no suffix is given, then `PBP_BINDER_VERSION` is set to `PBP_VERSION`.
    These env vars are used by other recipes, including one to regenerate `README.md`
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