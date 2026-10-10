# Private Redox binary packages

Private, unofficial Redox OS packages for `x86_64-unknown-redox`, including
local modifications and AI-assisted work. Not an official Redox distribution.
Files are stored in Git and downloaded through GitHub's authenticated HTTPS
file API. There is no Pages site or publishing workflow.

Cookbook package root:

```text
https://api.github.com/repos/RedoxORG/redox-pkgs/contents
```

Private downloads require authentication; an ordinary anonymous Raw URL does
not work. The current local build uses the small [curl adapter](scripts/curl-github.sh)
with its existing GitHub CLI login mounted read-only into the build container.
The adapter returns raw file bytes for this repository only; other curl calls
remain unchanged. Credentials are not committed or placed in URLs/arguments.

The root contains the public signing key. The target directory contains
`repo.toml`, metadata and signed `.pkgar` files. Never publish the private key,
system images, credentials or build caches. Missing packages use Cookbook's
existing source-build fallback. Package updates create ordinary Git history.

Packages retain their upstream licenses. See [sources](SOURCES.md),
[deployment and checks](DEPLOYMENT.md), and [independent review](REVIEW.md).
