# Independent review

## Private Git download plan: PASS

Latest-state read-only review by GPT-6.1 Sol, high reasoning.

- Repository independently confirmed private; Pages API returns 404.
- Reuse the real external-curl path and existing GitHub CLI authentication.
  No pkgutils changes, host application replacement or credential copies.
- The raw GitHub Contents API supports the current package sizes.
- Preserve packages/history and unrelated source/configuration work.
- Verify adapter routing and failure propagation, anonymous denial, and
  real empty-cache package downloads with signature-checked extraction.

Small-key authentication preflight is not full package acceptance.

## Implementation and acceptance: PASS

Fresh independent read-only review by GPT-6.1 Sol, high reasoning:

- GIT-1: private repository confirmed; Pages and anonymous Raw return 404.
- GIT-2: exact URL/argument routing, gh failure propagation, unchanged
  unrelated curl behavior; syntax, helper equality and permissions checked.
- GIT-3: existing authentication reused through read-only mounts; no tokens
  in the adapter, URLs or arguments. Credentials/private keys were not read.
- GIT-4: source commit changes one URL only; original settings/mounts and
  all package/license/build-input/key files remain unchanged.
- GIT-5: independently matched three downloaded package hashes, metadata,
  key and index; successful cook logs and 60/4/5 extracted files/links checked.

Signature extraction, exit code and mock-test results use the executor's
records; downloaded files and refusal of anonymous access were independently
checked. Success uses the existing proxy and command-scoped HTTP/1.1.
The failed HTTP/2 run and canceled slow direct run are not PASS evidence.
Default direct large-package downloading and a new system boot remain NotRun.
No implementation blockers. Publication/readback is tracked in DEPLOYMENT.md.
