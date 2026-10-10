# Independent review

Latest-state read-only review: GPT-6.1 Sol, high reasoning.

## Fresh-build plan and implementation: PASS

- Keep the standard bootstrap, Make, Cookbook, mounts and image path.
- The source commit changes five task files only: 59 additions, two deletions.
  Its parent is the remote `local/main` baseline; other local commits and
  uncommitted configuration are excluded without rewriting that branch.
- The 27-line adapter authenticates only the exact private repository and
  original `curl -sSL URL` call. Native curl receives the token through
  configuration stdin, never a URL or process argument.
- Focused tests check existing/first-login raw output, no-terminal failure,
  authentication/download errors and unchanged unrelated curl behavior.
  UTF-8/LF, shell syntax, diff whitespace and secret checks passed.
- The redundant adapter in the package repository is removed. The canonical
  script lives in the source repository used by a fresh build.

## Package and runtime acceptance: PASS

The package refresh retains the signing key and other 37 packages. Independent
review checked input identities, archive/metadata/index hashes and extraction
contents against the rebuild receipts. The base and bootloader private native
downloads match the published `9acaefb7` packages.

The clean publication tree built an ordinary server image. The executor's
installed-file receipt matches the expected EFI, initfs, inputd, login and
libc hashes. Those mounted guest files were not separately remounted by the
reviewer. The QEMU command identifies that image; the reviewer independently
checked its log and 1280x800 screenshot showing `redox login:` after automatic
startup with the one-second configuration.

Tool/compiler caches, an existing command-scoped proxy and standard CLI
pre-authentication were used. A cold new-OS bootstrap and real interactive
first login were not rerun. Failed or canceled intermediate commands are not
accepted evidence. This is integration acceptance, not a repeat of every
previous manual resolution or unrelated feature case.

Final contract/publication status is recorded in [FRESH-BUILD.md](FRESH-BUILD.md).

The executor subsequently fast-forwarded only the reviewed source commit and
read back `b3c76ef9d6f0c72ad2dffd6a5027b63a6d505de6` on remote `local/main`.
This publication check is separate from the preceding independent review.
