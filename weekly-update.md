# Current package update

2026-10-15 frozen-input update.

- Published base, bootloader, orbterm and redoxfs at `40789301555d0755b35583a32b6f5fe838bdad6b`. Exact remote bytes and signatures pass for all four. Independent normal server consumer build, boot, login and recorded CLI checks pass; installed binding covers base, bootloader and redoxfs. Orbterm is absent from the normal server configuration: its remote signed payload and ABI are verified, GUI runtime is NotRun.
- Base and bootloader are actual frozen private-source builds. Orbterm and redoxfs are verified compatible official distributions re-signed without content changes.
- The other 35 package objects and archives/metadata are unchanged. Missing historical baselines are not repaired by observing unchanged files.
- Independent consumer started with an empty private-package cache and no local source overrides. Only original checked SDK/crate archives and an OS container layer were reused.
- Runtime coverage is limited to recorded tests; network, graphical interaction, persistence and fault behavior are not implied.

Exact receipt hashes and input identities are in `binary-inputs.json` under `scheduled_update_20261015_01`.
