# Redox x86_64 binary packages

This repository distributes unofficial, signed Redox OS packages for
`x86_64-unknown-redox`.

Download the [latest package snapshot](https://github.com/RedoxORG/redox-pkgs/releases/latest).
The Release contains `repo.toml`, package metadata (`.toml`), signed archives
(`.pkgar`), and `id_ed25519.pub.toml`. Use the files from the same Release
when checking an index or verifying a package.

Original attachment names are stable across releases. The latest download URL
has the following form.

```text
https://github.com/RedoxORG/redox-pkgs/releases/latest/download/<filename>
```

Packages retain their upstream licenses. See each Release's source and license
links and its accompanying build files. The [package source record](SOURCES.md)
and [license texts](licenses/) provide additional provenance.

The [build and consumer verification record](DEPLOYMENT.md) describes the
earlier authenticated package delivery. The
[per-package input ledger](binary-inputs.json) records published build inputs.
