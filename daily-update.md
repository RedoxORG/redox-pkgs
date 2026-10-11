# Daily binary update

Run: 2026-10-11, Asia/Singapore. Trigger received at 06:26:49 +08:00.

The first daily check enumerated all 11 existing private RedoxORG repositories
(10 source repositories and this package repository). REST pages contained
11 and zero entries; GraphQL also reported `hasNextPage=false`.
The frozen package branch is `main` at
`5ebaa810f64385fdbc4f3419393ac68e95770e58`.
Exact source branches, revisions and all 39 retained artifact hashes are in
[the input ledger](binary-inputs.json).

| Input/package | Result | Required next step |
| --- | --- | --- |
| base | RemoteBehindPackage: remote `221afd88` is a strict ancestor of published source `f9c236ec`; current archive matches the accepted hash | Source maintainer must reconcile the intended remote branch with the newer published input; retain the package |
| bootloader | RemoteBehindPackage: remote `70c5dff9` is a strict ancestor of published source `fce56753`; current archive matches the accepted hash | Reconcile intended source input without downgrading the package |
| relibc, installer, userutils, orbterm | NeedsDecision / BaselineMissing: metadata says `local_source`, but complete published source/recipe/configuration/dependency receipts are absent | Recover published input receipts, or approve a reconciled source input through source maintenance before replacement |
| bash | NeedsDecision / BaselineMissing: latest committed Redox recipe removes `SYS_BASHRC` and changes prompt files versus versioned published build inputs | Confirm intended recipe through source maintenance before rebuilding; retain the recorded private behavior |
| uefi dependency | Bootloader manifest and lock select current remote `49c5b50b` | No dependency-triggered rebuild; bootloader's incomplete baseline remains pending |
| users dependency | PendingDependency: remote userutils selects crates.io `redox_users` 0.5.3, not the private users checkout | Consumer pin decisions belong to source maintenance; no pin changed |
| object dependency | PendingDependency: relibc locks official GitLab `andypython/object` at `da781336`; build tool selects crates.io object 0.38.1 | No fabricated object package or claim that private object `7270e3f0` was built |
| Other 32 packages | Retained; no further mapped effective input change established; full historical baselines are incomplete | Monthly official refresh remains separate; these packages are not asserted UpToDate |

The normal Cookbook is integrated into Redox itself (`target/release/repo`),
not a missing sibling checkout. User development changes and ignored local
configuration were inspected only to avoid consuming them. Existing signer
files are present under the build tree's `build/` directory; private-key
contents were not inspected. Input/baseline decisions prevent replacements.

This run verified package/index names, metadata target/BLAKE3 identities,
SHA-256 hashes, unchanged public key, source ancestry and dependency pins.
Old signed-extraction and boot results remain historical receipts only.
New builds, signature/payload tests, runtime tests and binary publication:
**NotRun**. No successful input baseline was advanced. Null baselines remain
pending on subsequent runs, even if the observed SHA is unchanged.

Independent read-only review: PASS (GPT-6.1 Sol/high). Reconciliation receipt
`fe632f9aa15dc317344a2b720812461f0ea9877a` was fast-forwarded to private main;
its exact remote SHA and all three file hashes were read back successfully.
This acknowledgment records that published receipt; binary publication remains
NotRun. The ledger verifier passed, including
three tamper rejection checks. Authenticated API
re-enumeration through the existing command-scoped proxy succeeded; all frozen
SHAs remained unchanged. Earlier TLS timeouts are not broken credentials.
The input decisions were notified to user zeng through msg.exe.
