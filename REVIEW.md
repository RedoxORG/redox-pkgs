# Independent review

## Pre-publication: PASS

Reviewer: GPT-6.1 Sol, high reasoning; read-only review of the latest files.

- The index, 39 packages, 39 metadata files and SOURCES package names match.
- Excluded libgcc/libstdcxx have no remaining index or file entries.
- All 78 package/metadata copies and the public key match the WSL originals.
- Fifteen GNU recipes, patches and Bash configuration files match real inputs.
- Exact GNU source URLs/BLAKE3, patches, recipes, helper and license texts exist.
- Cookbook helper matches official commit
  `54ad8740ad420dd2dff27a9fc757201cc06fed57` byte-for-byte.
- Bash's 1,569 original source files match the original archive with no missing
  files or content differences; generated additional files were not compared.
- Staged whitespace checks pass, with verbatim upstream patch/license text
  exempted from whitespace normalization.

The execution-side signature and payload checks are cited, not independently
repeated. This review allows publication; it does not certify live Pages or
fresh HTTPS package consumption.

## Post-publication: PASS

Latest-state read-only review closed PUB-1 through PUB-6 for package snapshot
`ebfc0e8e3988bc7709cdded9586633699cfe6f35`.

- Published branch/tree match local; public assets and source/license files
  did not expand after pre-publication approval. Private-key URL returns 404.
- Pages is built, uses legacy main:/ publication and enforces HTTPS.
  Independent GETs of the index/key passed; HTTP redirects to HTTPS.
- Actual fresh base, bootloader and redoxfs downloads match published archives;
  cache metadata, key and index identities match.
- Extracted base (60 entries), bootloader (4 files), and redoxfs (5 files)
  match original staged content and link targets with no differences.
- The local Redox URL-only commit contains no other tasks' changes.
- Signing/payload checks, tool compilation and original-cache preservation
  use the execution-side records; downloads, extracted content, refs and live
  HTTP behavior were independently checked.

A new HTTPS system boot remains NotRun; previous HTTP startup is
UserReportedPass. This does not block the scoped HTTPS publishing and Cookbook
download/extraction acceptance. A documentation-only update must still have
its exact remote SHA and Pages deployment read back after pushing.
