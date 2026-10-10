# Private Git file repository

## Scope and acceptance

Store the 39 existing signed packages in private `RedoxORG/redox-pkgs`.
Use authenticated GitHub file downloads over HTTPS. Pages stays disabled.
Keep package bytes, signing keys, existing Git history and other source work.
Do not create workflows or commit credentials, disk images, caches or logs.

Acceptance: private visibility, no Pages site, anonymous requests denied,
authenticated file bytes matching the committed snapshot, and fresh real
Cookbook downloads with verified extraction of base and bootloader.

## Minimal integration

- Cookbook's root URL becomes
  `https://api.github.com/repos/RedoxORG/redox-pkgs/contents`.
- Its existing downloader invokes external `curl -sSL URL`.
- A small container-only curl adapter recognizes only that exact repository
  prefix and invokes existing `gh api` with the raw-file media type.
  All other curl calls delegate unchanged to the original `/usr/bin/curl`.
- Read-only container mounts expose the adapter, existing Linux GitHub CLI
  and its existing login configuration. No token is copied into the repository
  or passed in command arguments. No installed host application is replaced.
- Preserve all existing local mount/settings entries. Rebuild only Cookbook;
  use isolated acceptance caches without rebuilding the system disk.

## Plan and contract

Review this plan; install the adapter and local mounts; change the URL;
test anonymous denial and authenticated downloads; review and commit only
task files. Push only this package repository and read back its exact SHA.

| Rule | Location | Positive check | Negative check | Evidence |
| --- | --- | --- | --- | --- |
| GIT-1: Private/no Pages | Repository settings | Authenticated read, private flag | Pages API 404; anonymous file requests denied | API readback |
| GIT-2: Authentication stays scoped | Curl adapter | Exact private prefix uses gh raw GET | Other curl commands do not use gh or receive credentials | Adapter tests/review |
| GIT-3: No credential copies | Adapter/docs/local mounts | Reuse existing login read-only | No tokens in files, arguments or outgoing commits | Scoped secret scan |
| GIT-4: Preserve work | Local build/new repo | URL-only edit; mounts extended | No other source/cache/disk/package/history changes | Diffs and package hashes |
| GIT-5: Real private consumption | Cookbook | Fresh authenticated download/extraction | Anonymous download denied; no cached-only PASS | Runtime receipt |

## Ledger

| Check | Status | Evidence |
| --- | --- | --- |
| Pages removed | PASS | Pages API returns 404 |
| Private visibility | PASS | Repository exists, visibility=private |
| Existing authenticated CLI in container | PASS | Private public-key response SHA-256 matches committed key |
| Independent plan review | PASS | See REVIEW.md; GIT-1 through GIT-5 executable and scoped |
| Adapter/URL/mount integration | PASS | Exact-prefix routing, gh failure propagation, unrelated curl behavior; normal-container key hash matches |
| Fresh private Cookbook acceptance | PASS | Empty-cache real Cookbook cook, signature-checked base/bootloader/redoxfs extraction; receipt below |
| Independent final review | PASS | REVIEW.md; GIT-1 through GIT-5, proxy download scope explicit |
| Commit/push/readback | NotRun | Pending |

Snapshot commit: `ebfc0e8e3988bc7709cdded9586633699cfe6f35`.
Index SHA-256: `34021ada741ab85165518fb6e119e48311a49cd74d48a3ee37a07a7511f48c40`.
Public-key SHA-256: `0c581ffbf05585a41ebe1a0fc94f83283b47382fd4f79a4138d9f6641e8b4ec0`.
The earlier system startup result is user-reported and is not a new private
download or system-boot acceptance result.

## Private download receipt

2026-10-10: real `target/release/repo cook --repo-binary
--cookbook=/accept/recipes base bootloader` returned zero in the existing
`redox-base` image with a fresh isolated cache and the three read-only mounts.
The acceptance command used the existing proxy and HTTP/1.1 for transport;
those test-only settings were not persisted. Direct normal-container key
download also matched. This verifies downloading, not a new system boot.

| Package | Download SHA-256 | Extracted files/links |
| --- | --- | --- |
| base | `c6b6c606c7678b5c7163a2be35fcafa1faecfec89f8512a037066065dc8b6e5f` | 60 |
| bootloader | `563aed2e886782d1b04bf233d88a2828765063b76efaa015d6cbac83a57d0fa4` | 4 |
| redoxfs | `5b78c65129630b741000c358a23963947668ab4816e15158ca5087edb76db328` | 5 |

All three archives, the public key and index match the committed snapshot.
Package/license/build-input files and existing recipe caches are unchanged.
Adapter tests cover gh failure without anonymous fallback, non-matching
repository prefixes, extra curl arguments and `curl --version`.

Local Redox URL-only commit: `bf481c904b9e9c43de7a73d5518324d271c3bacf`;
not pushed. This configuration task has no matching tracking Issue.
Temporary caches/logs stay outside Git and are removed after review.
