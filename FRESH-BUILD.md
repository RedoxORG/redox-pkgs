# Fresh private build

## Requirement

A fresh checkout of RedoxORG/redox local/main must use the normal workflow:
`./podman_bootstrap.sh -d`, a build-only `.config`, and
`make all image qemu kvm=no`. With `REPO_BINARY=1`, selected packages come
from this private repository and include the published private components.
No sibling source directories, source symlinks, cookbook.lock overrides,
host CLI binary mounts or special installer path may be required.

Private access requires a GitHub login. On first private download, the
container prompts once using the normal gh browser login; its existing
ignored build/podman home retains that login. No credentials enter Git,
URLs, process arguments or download output.

## Minimal design and plan

1. Keep upstream bootstrap, Make, Cookbook, prefix and image paths.
   Ship the small exact-prefix curl adapter in redox/scripts, install gh
   in the standard container, and mount only that tracked adapter.
   Set the package URL to the private GitHub file API. Send the raw-file
   media type and authentication to native curl through config stdin. Other curl calls
   and native binary/source selection stay unchanged.
2. Inventory the private component inputs. Rebuild only outdated private
   packages with the normal Cookbook and existing signer, preserving other
   packages and corresponding sources/licenses. Update index/metadata.
3. Test a clean archive of the exact publication tree outside the repo
   (not a clone/worktree), with no sibling paths or ignored overrides.
   Authenticate without exposing tokens, download into an empty cache,
   build the ordinary image and boot it; check installed package hashes
   and automatic resolution startup. Use bounded jobs and isolated output.
4. Independently review, commit, check all outgoing files and secrets,
   publish only task commits/packages, and read back exact remote SHAs.

The publication commit has the current remote redox local/main as parent.
Use a temporary Git index to construct only the listed task files; preserve
the current local branch and user changes. No other task commit, workflow,
clone, worktree, history rewrite or force push is authorized.

## Implementation contract

| Rule | Location | Positive test | Negative test | Evidence |
| --- | --- | --- | --- | --- |
| F1 Fresh integration | src/lib.rs, mk/podman.mk, containerfile, tracked adapter | Normal container gets private key/package | No sibling mounts/ignored override inputs | Clean-tree command and hashes |
| F2 Scoped authentication | Adapter and existing container home | Existing login and first-login branch return raw bytes | No TTY fails clearly; gh failure propagates; unrelated curl unchanged | Focused shell tests, secret scan |
| F3 Current package snapshot | Package files/index/input receipt | Component inputs and installed bytes match rebuilt packages | Stale/official artifacts are not called current | Input identities, archive hashes |
| F4 Ordinary runtime | Clean server image and QEMU | Private image with timeout_ms=1000 boots without input | Old daily image/cache is not used as acceptance | QEMU/installed hash receipt |
| F5 Publication isolation | Temporary index, task branch and remote refs | FF publication contains only task files | Other local commits/dirty files excluded | Parent/tree/range and remote SHA readback |

## Ledger

| Gate | Status |
| --- | --- |
| Plan review | PASS: independent GPT-6.1 Sol/high; standard container already supplies TTY and persistent home |
| Implementation/tests | PASS: scoped adapter tests; exact publication tree; UTF-8/LF, syntax and secret checks |
| Fresh package/image/runtime acceptance | PASS: signed extraction; installed hashes; normal no-input QEMU boot to login; see DEPLOYMENT.md for cache/transport limitations |
| Independent final review | PASS: GPT-6.1 Sol/high independently checked F1-F5, final docs, package inputs, logs and screenshot; mounted-file hashes use the executor's receipt |
| Source publication/readback | PASS: remote local/main is b3c76ef9d6f0c72ad2dffd6a5027b63a6d505de6; one task commit from 38df0e3346ef2468a0b4f99aa8e367e2c6f408e6; local branch and user changes preserved |
| Package publication/readback | PASS: package refresh 9acaefb7a151a3975c773505ea4417912765d5c9 was published and read back; subsequent documentation-only commits leave that package snapshot unchanged |

Source change: five files, 59 additions and two deletions; no production Rust
tests, new framework or workflow. Documentation publication is a separate
task-only receipt commit. Raw logs, credentials, images and caches are not
committed. Task-only test processes ended and temporary outputs are removed
after review; shared processes and the user's container image are untouched.

This configuration task has no matching tracking Issue. Do not create
an Issue solely for this document. Keep raw build/runtime logs outside Git.
