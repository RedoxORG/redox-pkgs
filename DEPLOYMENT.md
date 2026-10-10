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
| PUB-4: Preserve user work | Build tree | Only URL edit and necessary tool rebuild | Reject our writes to other source files, recipe caches or disk | Scoped diff/cache hashes |
| PUB-5: HTTPS consumption | Pages/Cookbook | Fresh downloads and extraction | Reject HTTP downgrade/errors/cache-only success | Runtime checks |
| PUB-6: Corresponding sources/licenses | SOURCES, build-inputs, licenses | Exact GNU archives, patches, recipes, helper and notices | Exclude packages without located sources; no private required source links | Source inventory and bash comparison |

## Ledger

| Check | Status | Evidence |
| --- | --- | --- |
| Repository created | PASS | Authorized public RedoxORG/redox-pkgs |
| Snapshot/source checks | PASS | 41 original packages verified with pkgar signatures and payload hashes; wrong public key rejected; published subset has 39 packages; metadata/index/size consistency checked |
| Independent publication review | PASS | See REVIEW.md; exact 39-package snapshot and build inputs independently checked |
| Commit/push | PASS | Package snapshot `ebfc0e8e3988bc7709cdded9586633699cfe6f35`; remote branch and Git tree exactly match local |
| Pages/HTTPS | PASS | main:/ deployment built; https_enforced=true; HTTPS index/key bytes match; HTTP redirects to HTTPS; private-key URL returns 404 |
| Fresh Cookbook acceptance | PASS | Isolated empty-cache run with compiled tool: base, bootloader and redoxfs downloaded through HTTPS and extracted with signature/data verification; existing system disk and recipe caches untouched |
| System boot | UserReportedPass (HTTP) | User reported normal startup before HTTPS publication |
| Independent final review | PASS | PUB-1 through PUB-6 closed; reviewer independently checked deployed refs/HTTPS, downloaded inputs, cache identities and extracted files |

## Acceptance receipt

- Package snapshot commit: `ebfc0e8e3988bc7709cdded9586633699cfe6f35`.
- Published snapshot Git tree: `873fe36184a903b55e5e0d92a590388f31c8a4e7`.
- Local Redox URL commit: `bea8ccafb22c43f892aed079903eec3d166bae01`
  (`src/lib.rs`, one line); not pushed to the private source repository.
- Cookbook release build passed offline with two compilation jobs.
- Fresh acceptance used the real release `repo cook --repo-binary` command,
  copied real recipes and isolated caches; command-scoped existing system proxy.
- Index SHA-256:
  `34021ada741ab85165518fb6e119e48311a49cd74d48a3ee37a07a7511f48c40`.
- Public-key SHA-256 (both HTTPS response and actual Cookbook key cache):
  `0c581ffbf05585a41ebe1a0fc94f83283b47382fd4f79a4138d9f6641e8b4ec0`.
- Fresh downloaded base SHA-256:
  `c6b6c606c7678b5c7163a2be35fcafa1faecfec89f8512a037066065dc8b6e5f`.
- Fresh downloaded bootloader SHA-256:
  `563aed2e886782d1b04bf233d88a2828765063b76efaa015d6cbac83a57d0fa4`.
- Both downloaded archives match their published files and prior local inputs.
  Existing base/bootloader source archives and metadata cache hashes stayed
  unchanged. Other tasks added commits during this run; their work was not
  included in the URL-only commit or pushed to this public repository.
- The new HTTPS deployment was not followed by a new system boot test; the
  earlier HTTP startup result remains user-reported evidence only.
- Final review compared extracted base (60 entries), bootloader (4 files),
  and redoxfs (5 files) against the original stage: no content or link-target
  differences. This documentation-only receipt update does not change packages,
  signing keys, source inputs or license assets.
