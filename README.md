# Private Redox binary packages

Private, unofficial Redox OS packages for `x86_64-unknown-redox`, including
local modifications and AI-assisted work. Not an official Redox distribution.
Files are stored in Git and downloaded through GitHub's authenticated HTTPS
file API. There is no Pages site or publishing workflow.

Cookbook package root:

```text
https://api.github.com/repos/RedoxORG/redox-pkgs/contents
```

Fresh builds of private `RedoxORG/redox` use these packages with the ordinary
bootstrap and Make commands. Its tracked
[curl adapter](https://github.com/RedoxORG/redox/blob/local/main/scripts/curl-github.sh)
uses the existing private download authentication in the standard build
container. A working network route and repository read access are prerequisites.
See the current [consumer verification](consumer-verification.md) for measured
results and limits. This receipt does not certify the source adapter credential
delivery or future credential rotation.

The root contains the public signing key. The target directory contains
`repo.toml`, package metadata and signed `.pkgar` files. The private key,
system images and build caches are not repository contents. Missing packages
use Cookbook's existing source-build fallback. Updates are signed binary
snapshots: pushing component source does not automatically rebuild them.

Packages retain their upstream licenses. See [sources](SOURCES.md),
[build instructions and acceptance](DEPLOYMENT.md),
[contract and ledger](FRESH-BUILD.md), and [independent review](REVIEW.md).

Weekly update checks use [the current report](weekly-update.md) and
[the per-package input ledger](binary-inputs.json). The
[first daily check](daily-update.md) remains a historical receipt.

The package updater uses the [dedicated isolated build area](isolated-build.md).
