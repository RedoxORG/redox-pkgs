# Redox x86_64 binary packages

This repository distributes unofficial, signed Redox OS packages for
`x86_64-unknown-redox`.

Download the [latest package snapshot](https://github.com/RedoxORG/redox-pkgs/releases/latest).
The Release contains `repo.toml`, package metadata (`.toml`), signed archives
(`.pkgar`), and `id_ed25519.pub.toml`. Use the files from the same Release
when checking an index or verifying a package.

Consumers use `https://redox-pkgs.pages.dev/pkg`. Cloudflare redirects the
original x86_64 package paths and root public key to this repository's public
Latest Release. Binary downloads need no GitHub CLI or login. Official static
files use `https://redox-statics.pages.dev`.

All Releases remain mutable and use the original attachment names. The direct
latest download URL has the following form.

```text
https://github.com/RedoxORG/redox-pkgs/releases/latest/download/<filename>
```

Packages retain their upstream licenses. See each Release's source and license
links and its accompanying build files. The [package source record](SOURCES.md)
and [license texts](licenses/) provide additional provenance.

The [build and consumer verification record](DEPLOYMENT.md) describes the
current download setup and its verified scope. The
[per-package input ledger](binary-inputs.json) retains earlier build inputs;
its historical entries are not a claim that every current package is fresh.
