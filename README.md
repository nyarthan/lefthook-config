# Lefthook Configs

## Usage

In your local Lefthook config file e.g. `lefthook.yml`:

```
remotes:
  - git_url: https://github.com/nyarthan/lefthook-config
    configs:
      - configs/prettier-full.yml
      - ...
```

## Formatters (pre-commit)

| Config          | Filetypes                                           |
| --------------- | --------------------------------------------------- |
| dprint-json     | `json,jsonc`                                        |
| dprint-markdown | `md`                                                |
| nixfmt          | `nix`                                               |
| prettier-full   | `js,jsx,cjs,mjx,ts,tsx,cts,mts,yml,yaml,json,jsonc` |
| prettier-jslike | `js,jsx,cjs,mjx,ts,tsx,cts,mts`                     |
| ruff            | `py,ipynb`                                          |
| rustfmt         | `rs`                                                |
| stylua          | `lua`                                               |
| yamlfmt         | `yml,yaml`                                          |
