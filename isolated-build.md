# Isolated private binary build

The user authorized `~/redox/_repos.bin` as the dedicated build area, including
necessary repository clones within that directory and necessary commits/pushes
to the existing private RedoxORG/redox-pkgs. Development checkouts are not build
inputs. Source pushes, worktrees and workflows remain outside this scope.

## Inputs and layout

Reuse the existing clean `~/redox/_repos.bin/redox` at `01efa53d`.
The six package sources and selected UEFI dependency were cloned from their
existing RedoxORG private repositories into sibling directories. Full revisions,
configuration hashes and tool identities are in
[the ledger's isolated_setup record](binary-inputs.json).

| Checkout | Locked revision | Consumer |
| --- | --- | --- |
| base | 221afd8834a3d6f4f641d62f58aa2f39578a3aad | base |
| bootloader | 70c5dff98aa750b31e0797686d92ba9ad331f29f | bootloader |
| uefi | 49c5b50b8e5c2bdee0f8b9e2b11014dddb16156f | bootloader's existing Cargo pin |
| relibc | b35b512a6a857892bb22906bfcf9e11b7feed37c | relibc and affected ABI consumers |
| installer | 2d2416c151e880bd68799b5c6cf46d019d964675 | installer |
| userutils | 73aea8b3f858578ad3909e0661e9cf310e3b1d6d | userutils |
| orbterm | ba1243cd6bc0230ca00aac5d550fe17e727e2b46 | orbterm |

The ignored build-only `.config` uses `redox-binary-build`, its own Podman home,
Make jobs=2 and the container home's Cargo jobs=2. Standard root, home and curl
mounts are retained. The dedicated parent is additionally mounted read-only using an explicit
`override PODMAN_VOLUMES` in the ignored `.config`; all three standard mounts
are included because Make reads `.config` before `mk/podman.mk`.
A plain early `+=` is overwritten by the latter file. With the override,
six ignored recipe source links resolve to its committed sibling checkouts.
The ignored cookbook.lock selects local rules for those six recipes.
No recipe source URL or source Cargo lock was changed. The container's own
Git config redirects the already locked private UEFI URL to its read-only
clone; Cargo uses the same original URL/revision identity and its own Git cache.
The ordinary FDT pin was fetched successfully without another clone.

The existing project signer was securely copied once into ignored build files
with mode 0600. Its public-key hash remains
`0c581ffbf05585a41ebe1a0fc94f83283b47382fd4f79a4138d9f6641e8b4ec0`.
No private-key or token content is included in these records.

## Readiness contract and evidence

| Rule / location | Positive check | Negative check | Result |
| --- | --- | --- | --- |
| I1 Committed isolated inputs / cloned checkouts | Seven exact source SHAs and eight clean Git trees, including Redox | No developer source mount or source working-tree change | PASS |
| I2 Normal integration / config, source links, cookbook.lock | Container command derived from normal Make resolves six clean sources; make f.relibc returns cached | Writing fails with EROFS; removing parent mount reproduces broken source link without fetch | PASS after mount correction |
| I3 Build bounds / isolated Cargo home and Make config | Persisted Make/Cargo jobs=2; standard configuration preserved | A count/configuration value is not treated as a CPU performance measurement | PASS for configuration; CPU benchmark NotRun |
| I4 Existing key / ignored build key files and native pkgar | Sign/extract exact probe content using the unchanged public key | Tampered archive is rejected | PASS |
| I5 Locked dependency / container Cargo Git cache | Exact UEFI revision exists in the actual isolated cache | A host clone alone is not treated as cache acceptance | PASS |
| I6 Release boundary / input ledger | Old artifact identities, successful baselines and prior run receipts preserved | Tool readiness is not package, image or runtime acceptance | PASS; release checks NotRun |

The normal `make cookbook` prepared the dedicated container and toolchain and
compiled Cookbook. Its CLI runs in that container; the native pkgar CLI from
the already selected official GitLab dependency passed the key/tamper probe.
Caches and tools remain in the dedicated area for subsequent runs. No source commit, published package, published metadata/index or development
file was changed. The initial setup did not build the cross-target prefix.
The mount-correction regression now exercises the ordinary relibc/sysroot
build; its actual outcome is recorded below. Full image/runtime remain NotRun.

The existing weekly heartbeat now uses the dedicated root and this explicit
clone exception. Its Monday 05:55 Asia/Singapore schedule, enabled state,
destination and release safety rules are preserved; the monthly task was not
changed.

## Remaining release inputs

Isolation does not replace source reconciliation. Base and bootloader remote
revisions still predate their accepted published source inputs; Bash's remote
recipe still removes the recorded SYS_BASHRC/prompt behavior. Relibc, installer,
userutils and orbterm still lack complete historical published input receipts.
Users/object private revisions are still not selected by their consumers.
These exact release items remain in [the weekly receipt](weekly-update.md);
no successful package baseline was advanced by this setup.

## Normal Make correction and regression

The initial manual-container mount check passed, but the early `.config` append
was overwritten by `mk/podman.mk`. Normal Make therefore missed the sibling
mount; relibc's source symlink became broken, its local rule fell back to clone,
and replacing that symlink with source.tmp failed with ENOTDIR. The explicit
override above fixes the generated normal Make command, preserving standard
mounts. The user's failed source.tmp directory remains untouched.

Positive and negative mount checks and normal make f.relibc now pass. The two
relibc submodules were initialized at the committed gitlinks:
`dlmalloc-rs` 40c10f6182cb1d2a78b29f85492936dfbeded02e and
`openlibm` f5ed774593458e116e69731a3ffa59e2a6408d4e.

Normal relibc/sysroot regression: PASS, jobs=2, exit 0. Relibc compiled and
installed, the final sysroot was generated, and libc.a/libc.so/crt objects and
stdio.h were checked under
`prefix/x86_64-unknown-redox/sysroot/x86_64-unknown-redox`; their relative
paths, base directory and hashes are recorded in the ledger. Cookbook produced
local build packages only; none were uploaded to the private package repository.
All eight source Git trees remained clean; no task containers remain.
Full make all, image boot and package publication: NotRun.
No successful published package input was advanced.

Independent latest-state read-only review: PASS (GPT-6.1 Sol/high), including
normal Make mount generation, source/submodule identities and sysroot hashes.
