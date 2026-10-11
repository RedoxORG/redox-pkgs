# Weekly binary update

Run: 2026-10-12, Asia/Singapore. Scheduled cadence: Monday 05:55.
Heartbeat received at 05:52:00 +08:00. This receipt covers the actual check,
not an assertion that execution started at exactly the scheduled minute.

All 12 current private repositories were enumerated: REST pages had 12 and
zero entries, and GraphQL confirmed `hasNextPage=false`. There are ten source
repositories, the package repository, and the new coordination repository
`RedoxORG/workspace`, which has no independent binary package. No clone was
created. The package branch was frozen at
`9ad1b210ee310dcb71a760895640e6ac11972b48`.

The current [input ledger](binary-inputs.json) records this run under
`last_check`. Its earlier `run`, published artifact records, partial source
receipts and null successful input baselines retain their original provenance.

| Input/package | Current result |
| --- | --- |
| redox | New remote `01efa53d` changes only download authentication and README; package recipes, config, lock files and build-code inputs are identical to the previous observed tree |
| Nine other source repositories | Build revisions unchanged; this alone does not resolve incomplete published package baselines |
| base, bootloader | RemoteBehindPackage reverified: remote build revisions remain strict ancestors of the accepted published source receipts |
| bash | NeedsDecision persists: candidate recipe still removes the published SYS_BASHRC behavior and changes prompt configuration |
| relibc, installer, userutils, orbterm | NeedsDecision / BaselineMissing persists; complete published input receipts have not been recovered |
| users, object dependencies | PendingDependency persists; unchanged consumers still select registry/official GitLab inputs rather than these private default-branch revisions |
| Other 32 packages | Retained; no additional effective payload input change established; incomplete historical baselines are not relabeled UpToDate |

Fresh SHA-256 checks passed for all 39 archives and metadata files, the index
and the existing public key. Package/index names and metadata BLAKE3 identities
match. Six component recipe blobs also match the current frozen Redox tree.
The signer and normal integrated Cookbook executable remain present; private
key contents were not inspected. User changes were not used or modified.

Updated packages: **0**. Builds, new signature/payload checks, runtime tests
and binary publication: **NotRun**. No successful input baseline advanced.
Existing input decisions remain pending; they were already notified on
2026-10-11. No additional input decision was introduced by this check.

Independent read-only review: PASS (GPT-6.1 Sol/high). The complete remote
branch/SHA recheck also passed after a bounded transport retry. Only this
lightweight receipt, its
ledger entry and the README index are intended for fast-forward publication.
No source push, source synchronization, history rewrite or credential content
is part of this publication.
