# Redox binary packages

Unofficial Redox OS packages for `x86_64-unknown-redox`, including local
modifications and AI-assisted work. Not an official Redox distribution.

Package repository: <https://redoxorg.github.io/redox-pkgs/>

Publish the public key, package index, metadata and signed packages only.
Never publish the private key, system images, credentials or build caches.

Set `REMOTE_PKG_SOURCE` in the current Cookbook's `src/lib.rs` to
`https://redoxorg.github.io/redox-pkgs`, rebuild Cookbook and select binary
recipe rules. Missing packages fall back to source builds.

Packages retain their upstream licenses. See [sources](SOURCES.md),
[deployment and checks](DEPLOYMENT.md), and [independent review](REVIEW.md).
