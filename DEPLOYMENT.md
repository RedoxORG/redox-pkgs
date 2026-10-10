# Pages deployment

## Scope and acceptance

Publish the existing package snapshot via public HTTPS; keep source repos
private. Exclude private keys, credentials, system images, logs and caches.
The published index contains 39 packages. libgcc and libstdcxx are not part
of this snapshot; Cookbook can build missing packages from source.
Acceptance: successful Pages deployment, matching HTTPS files, and fresh
Cookbook downloads with verified extraction of base and bootloader.
The running system disk is not rebuilt or changed.

## Plan

1. Validate files, metadata, signing identity and source availability.
2. Independently review, commit and push only this repository's main branch.
3. Enable branch-based Pages at main:/ and enforce HTTPS.
4. Verify files; change the local Cookbook URL; test fresh downloads with
   isolated caches. Record results and independently review final state.

## Publication contract

| Rule | Location | Positive check | Negative check | Evidence |
| --- | --- | --- | --- | --- |
| PUB-1: Public assets only | Outgoing commit | Allowlisted files/sizes | Reject secrets, links, images, caches | Inventory |
| PUB-2: Consistent snapshot | Key and packages | Index/metadata/signatures match | Reject missing/changing files and wrong keys | Snapshot checks |
| PUB-3: Correct destination | Remote/main | Authorized new public repository | Reject unrelated refs/commits | Remote SHA |
| PUB-4: Preserve user work | Build tree | Only URL changes | Reject other file/cache/disk changes | Scoped diff |
| PUB-5: HTTPS consumption | Pages/Cookbook | Fresh downloads and extraction | Reject HTTP downgrade/errors/cache-only success | Runtime checks |
| PUB-6: Corresponding sources/licenses | SOURCES, build-inputs, licenses | Exact GNU archives, patches, recipes, helper and notices | Exclude packages without located sources; no private required source links | Source inventory and bash comparison |

## Ledger

| Check | Status | Evidence |
| --- | --- | --- |
| Repository created | PASS | Authorized public RedoxORG/redox-pkgs |
| Snapshot/source checks | PASS | 41 original packages verified with pkgar signatures and payload hashes; wrong public key rejected; published subset has 39 packages; metadata/index/size consistency checked |
| Independent publication review | PASS | See REVIEW.md; exact 39-package snapshot and build inputs independently checked |
| Commit/push | NotRun | Pending |
| Pages/HTTPS | NotRun | Pending |
| Fresh Cookbook acceptance | NotRun | Pending |
| System boot | UserReportedPass (HTTP) | User reported normal startup before HTTPS publication |
| Independent final review | NotRun | Pending |
