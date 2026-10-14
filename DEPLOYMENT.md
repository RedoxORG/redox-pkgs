# Private binary build and acceptance

## Build a fresh checkout

Use the default `local/main` branch of private `RedoxORG/redox`.
From its WSL directory, run `./podman_bootstrap.sh -d`, then create `.config`:

```make
PODMAN_BUILD?=1
FSTOOLS_IN_PODMAN?=1
CONFIG_NAME?=server
REPO_BINARY?=1
USE_SELINUX?=0
COOKBOOK_MAKE_JOBS?=2
export CI=1
```

Run `make all image qemu kvm=no`. On the first private download, complete
the normal GitHub CLI login with an account that can read this repository.
The container retains that login in the ignored `build/podman` home.
No sibling component checkout or local recipe override is required.
Restart the same disk with `make qemu kvm=no`; `image` recreates the disk.

The source repository ships the scoped curl adapter and installs GitHub CLI
in its normal container. Only this repository's file API is authenticated;
unrelated downloads retain the original curl behavior. Package publication includes no private key or token. Source adapter credential
delivery is outside this package release. Pages remains disabled.

These are published binary snapshots, not automatic builds on source pushes.
When a component changes, rebuild and publish its signed package before a
fresh build can consume that change. Missing packages retain Cookbook's
existing source-build fallback.

## Current published snapshot: 2026-10-13

Published artifact commit: [`5f29a6ed`](https://github.com/RedoxORG/redox-pkgs/commit/5f29a6ed3b11ae242e6a152356182317175bca97). Exact remote SHA and package bytes read back before advancing successful inputs.

Frozen recipe root: `5300847f01479312b6d932735ee4ca49aefc9e14`. Six packages were compiled from the recorded committed sources: base b4fe9e50, bootloader 70c5dff9, relibc 6348725d, installer 8ce7e5f9, userutils 4c96c611, and official Bash 5.3 with that recipe. Full revisions, locks, SDK identities and hashes are in [binary-inputs.json](binary-inputs.json).

All six signatures and extracted contents passed. The normal binary/offline image passed; its bootloader, initfs, inputd, login, libc.so, bash and bash.bashrc match the new packages. The initfs inputd matches this run normal build output. Normal QEMU reached login, root login succeeded, Bash reported 5.3.0 and background sleep/wait completed. Installer CLI and GUI runtime coverage is NotRun.

The remaining 33 packages and signing public key stay byte-identical. Pending source adoptions and publication state are listed in [current update](weekly-update.md). The 2026-10-10 snapshot below is historical and is superseded for these six packages.

## Historical accepted snapshot: 2026-10-10

Source integration:
[`b3c76ef9`](https://github.com/RedoxORG/redox/commit/b3c76ef9d6f0c72ad2dffd6a5027b63a6d505de6).
Package refresh:
[`9acaefb7`](https://github.com/RedoxORG/redox-pkgs/commit/9acaefb7a151a3975c773505ea4417912765d5c9).
The source publication range contains only this task's one integration commit;
other local commits and uncommitted configuration were excluded.

| Updated package | Source commit | Archive SHA-256 |
| --- | --- | --- |
| base | `f9c236ec7da5c786897c9a4722f3007162c95309` | `97d07f77be67a276315bcc4ae49122573b51ea41adcaccbb9a1c564c41868013` |
| bootloader | `fce56753ed991cf700f4ccf409a26e2b866a2db1` | `11b29ca0112b3db21ebb97274887972512c945c42b1b6aebc3fa780a379a143a` |

The other 37 packages and public signing key were preserved. Package
signatures were verified through Cookbook extraction; all 60 base and four
bootloader files/links matched the rebuilt staging contents.
Index SHA-256: `e997e7f0e5d57c92e259d3c2fdec53051222e2635d79e118a3cdb03453689ba0`.
Public-key SHA-256: `0c581ffbf05585a41ebe1a0fc94f83283b47382fd4f79a4138d9f6641e8b4ec0`.

## Fresh image and runtime receipt

An archive of the exact source publication tree was tested outside the
repositories. Its private-package cache started empty, without sibling
source links, local recipe rules or a custom installer. Normal Make paths
built host tools, downloaded private packages and generated a 512 MiB image.
The final adapter also redownloaded base and bootloader successfully.

Installed image hashes before boot:

| Guest file | SHA-256 |
| --- | --- |
| `/usr/lib/boot/bootloader.efi` | `995f8fc7a1bf8aaef1727472cc8b38589c9f9ba1d74b9a9c454146513619bd4d` |
| `/usr/lib/boot/initfs` | `a9f41a908f533da793b63c3f521776fb2de71e3fc6b726ede0c9cb50f4751b8d` |
| `/usr/bin/inputd` | `c1981705f34efa090120e7edbb7c068c19ceb66c04044852d0fbc80ca3895e5b` |
| `/usr/bin/login` | `47d6628c1278d6f06ece365a6aa145753f878bd610e02c1033660392fb98053f` |
| `/usr/lib/libc.so` | `f633e8ed9e2e8ebfbed25d249cfdb29194bfd160656a777083abf394a712a48c` |

The image contained `default_resolution=auto`,
`remember_last_resolution=true`, and `timeout_ms=1000`. Normal
`make qemu kvm=no`, with headless observation flags, reached `redox login:`
without keyboard input; the captured display was 1280x800. QEMU was then
closed cleanly. This verifies ordinary automatic startup with the accepted
resolution implementation, not a new measurement of its countdown text.

Compiler/tool caches were reused; the standard container was supplied with
the required GitHub CLI. GitHub authentication was pre-established through
its standard CLI. Transport used an existing command-scoped proxy.
A completely cold `./podman_bootstrap.sh -d` on a new operating-system
installation and interactive real first-login flow were not rerun. Focused
tests cover first-login routing, no-terminal failure and download errors.
Failed or canceled intermediate commands are not PASS evidence.

See [contract and ledger](FRESH-BUILD.md) and [independent review](REVIEW.md).

## Zsh published continuation

Frozen private zsh `fc3cff4f8e28a0dcac7b6dfb7f21d45fd3a06250` uses the committed `recipes/wip/shells/zsh` recipe patches and prepare, followed by local binding. The source recipe was not changed or pushed. Normal fresh compilation and signature/payload passed; a normal server image with zsh added passed and all 1172 installed files matched. Actual Redox runtime reported 5.9.999.3-test; compinit, _git/_7zip and background wait passed. Existing relibc getrusage informational logs remain a known limitation. Package metadata keeps Cookbook generated version TODO; actual source/runtime version and full identities are explicit in the ledger. Published artifact [2c8212a3](https://github.com/RedoxORG/redox-pkgs/commit/2c8212a39df7091071c89126949d7d4b753b7392); exact main SHA and 12 file bytes read back, online package signature/payload verified, successful input advanced.

## Current manual update

2026-10-14 base/bash candidate: normal source build, existing-key validation, normal server boot/root login/Bash shared aliases and installation binding PASS. Other 37 archives and metadata remain unchanged. Optional specialized PS/2 fixture timed out before login marker; guest lock-key cases NotRun, host keyboard14 PASS. Publication NotRun pending independent scope review and ordinary main fast-forward/readback; do not treat candidates as successful published baselines.
