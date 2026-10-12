# Dedicated maintenance and fresh consumer verification

Run: 2026-10-12. [Workspace #10](https://github.com/RedoxORG/workspace/issues/10).
The machine-readable [receipt](consumer-verification.json) binds the actual
source/package commits, remote objects, package hashes and installed files.
This is a new execution; earlier acceptance retains its original provenance.

## Actual results

An independent private remote clone at redox 01efa53d3023765b189bb8d7cfbbf98dc6d5e8f0
used the ordinary server/x86_64 Make and standard Podman mounts. It began without
local source links, cookbook.lock, producer packages or compiler outputs.
It used its own container image, HOME and outputs, with build/Cargo jobs=2.
Existing host prerequisites were reused; cold OS/bootstrap installation was not tested.

Attempts 1 and 2 failed downloading base.pkgar: HTTP/2 CANCEL (curl92), then a
partial HTTP/1.1 response (curl18). Native Windows curl via the existing proxy
retrieved the exact 43,938,349-byte remote archive and matched its known hash.
Selecting that existing proxy through ignored consumer HOME configuration let
normal make all finish with exit0. This was a real consumer download, not a
seeded producer cache. The successful attempt reused valid work from failed
attempts; first-attempt success and unrestricted network portability are not claimed.
No inner stdout retries were enabled, avoiding concatenation of partial streams.
The machine-specific proxy address is not published or made a source dependency.
The producer now uses the same standard ignored HOME network setting; its source
tree remained clean and normal Make relibc bindings/jobs/submodules passed after
this change. This is a setup preflight, not another source compilation.

All 39 archives were matched to the complete fixed remote Git object tree and
normally signature-verified/extracted with the unchanged private repository
public key. Metadata name/target/size/dependencies and signed-header BLAKE3
matched the index. All 35 server-selected consumer archives matched remote
archive hashes. Normal extraction rejected a corrupted signature and payload.
The other four packages, orbdata/orbital/orbterm/zsh, were validated against
exact remote objects; the server consumer did not install them.

The new image's bootloader.efi, initfs, inputd, login, bash and bash.bashrc matched
verified server package contents. bootloader.conf was auto, remember=true,
timeout_ms=1000. Normal Make QEMU kept its firmware, GPU and disk paths; only
headless observation and a task control socket were added. It reached redox login
without input, then a normal test login executed Bash 5.3.0(1)-release successfully.
This is current byte binding, boot smoke and Bash execution, not a rerun of every
historical interactive, persistence or fault case. The earlier serial harness
buffered prompts by line; the successful harness consumed raw chunks and
answered terminal queries. No guest failure was inferred from that harness issue.

## Maintenance and freshness

Both existing automations now maintain ~/redox/_repos.bin and necessary clones
within it. The weekly task remains Monday05:55 Asia/Singapore; the monthly
schedule, target threads, ACTIVE state and source-sync gates are unchanged.
Only prompts and update timestamps changed, independently reviewed and read back.
Shared nonblocking flock, frozen inputs, signatures, ordinary FF publication,
remote readback and no-source-push boundaries remain.

Successful effective input identity, earliest unpublished adoption-event time,
7-day deadline and publication time must be recorded separately. Failures,
new candidates, missed runs and lock contention cannot move that deadline.
An unchanged observation cannot turn an unknown baseline into UpToDate.
Local scheduling needs the machine and Codex desktop app running; a missed
execution remains missed and must be reported/recovered, not claimed on time.

Current package contents are usable under the tested prerequisites/network.
Complete historical successful input receipts/timing remain incomplete for all
39 packages: FreshnessUnknown. No payload was replaced and no successful input
baseline advanced. Source/recipe reconciliation still prevents downgrades:

- base: remote 221afd8834a3d6f4f641d62f58aa2f39578a3aad precedes accepted published source f9c236ec7da5c786897c9a4722f3007162c95309.
- bootloader: remote 70c5dff98aa750b31e0797686d92ba9ad331f29f precedes accepted published source fce56753ed991cf700f4ccf409a26e2b866a2db1.
- bash: current remote recipe omits published SYS_BASHRC/prompt behavior; retain the known good package.
- relibc, installer, userutils, orbterm: recover complete historical source/config/dependency receipts before assuming a replacement preserves private features.
- users: userutils Cargo.lock still selects registry redox_users 0.5.3; object: relibc Cargo.lock still selects official GitLab object da781336; private dependency pushes are not adopted. Exact full identities and Cargo.toml/Cargo.lock pin locations are in binary-inputs.json dependency_checks.

These are explicit input states, not user work orders. The updater owns evidence
recovery and independent checks. Only an actual source-publication or input
choice requiring authorization goes to the user with a concrete reviewed proposal.
Unmerged default-Bash/shared-shell-aliases work is not called published functionality.

Publication is limited to this lightweight receipt/ledger/documentation; no
archive, key, index, source, log, image or credential is in the outgoing change.
Latest independent read-only review: PASS (GPT-6.1 Sol/high), covering M1-M6
execution evidence and exact candidate scope. Remote commit/file readback follows
ordinary FF publication and is recorded separately; this file does not invent a
self-referential publishing commit SHA.
