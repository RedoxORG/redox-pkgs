# Public package downloads and verification

## Current download setup

Use [the unified package source](https://redox-statics.pages.dev/pkg) for all
architectures. Packages and the public key are published together as signed
package archives and related files in [statics Releases](https://github.com/redox-unofficial-mirrors/statics/releases).
Rebuild images that used the retired package domain to switch their source and
key. Public downloads require no GitHub login.

The build and snapshot verification below describe the historical setup.

## Build and boot

Use the Redox source repository's `local/main` integration branch and its
normal bootstrap instructions. In the WSL checkout, configure server builds:

```make
PODMAN_BUILD?=1
FSTOOLS_IN_PODMAN?=1
CONFIG_NAME?=server
REPO_BINARY?=1
USE_SELINUX?=0
COOKBOOK_MAKE_JOBS?=2
export CI=1
```

Run `make all`, then `make qemu kvm=no` when KVM is unavailable. Restart that
same disk with `make qemu kvm=no`; `image` and `rebuild` regenerate the disk.
No sibling source checkout or local recipe override is required.

## Verified snapshot: 2026-11-07

- Mutable Release `437432174`, tag
  `x86_64-packages-20261107T074359922947Z-1640f8f5c8b1`: 177 original-name
  attachments, 87 packages. The previous snapshot's 86 unchanged package pairs
  were retained byte for byte; only installer was rebuilt.
- Asset manifest SHA-256:
  `11b39ba2e955943979a2ad841dd9c7ecc13b939d18d637967b43279c3d08aab5`.
- Installer source: private integration commit
  `7644bfeecfc08ef5e4d823cbac5ff776f4c9b2b8`. Archive SHA-256:
  `33a83e4fef2e2ede1bf1b4253c33f2a1219c81e3a905649caa9c2346950b8a70`.
- Redox consumer `6dba150b136fa3b4e7010913b78e79733c89c6ea`
  passed normal server `make all` and normal UEFI/VGA QEMU boot on the same disk.
  Root/Bash login, package-domain configuration and both installed installer
  executables matched the signed published input. The source integration
  branch was published as this single migration commit after explicit history
  authorization; local and remote SHAs match with no outgoing commits.
- Actual Guest removal and fresh network reinstallation of the dependency-free
  whereis package passed. Its 203284-byte archive SHA-256 was
  `de05c5157231db4a9dc1383dc424142df0867c5ade96394cb033f1979df914a0`.
  Guest networking used an explicit test-only host proxy; direct Guest Internet
  connectivity was not tested.
- The complete build and tested Guest requests made 1021 connections with
  Redox server domains blocked, without a request to those domains. Actual old
  repository cache migration passed. A substituted wrong key rejected package
  installation with authentication failure. Independent review passed.

These checks establish this download integration and the stated runtime cases,
not complete interaction, persistence, native Hosted execution or package
freshness. Historical input and acceptance records retain their original scope.
