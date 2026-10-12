# Current package update

Run: 2026-10-12 frozen inputs; validation completed 2026-10-13.

- Actual compilation PASS: base, bootloader, relibc, installer, userutils, bash.
- Existing private public key retained; six signatures and extracted payloads PASS.
- Normal Make binary/offline server image PASS. Normal QEMU boot, root login, Bash 5.3, background wait PASS. Installed core files and initfs inputd match this run outputs. Installer CLI and GUI packages were not runtime-tested.
- Other 33 package archives and metadata remain unchanged (UpToDate for this run selection). Historical missing complete baselines remain explicitly unknown.
- relibc exports unchanged (3252); only math.h adds a typedef guard. No global ELF rebuild is justified.
- PendingDependency: userutils still locks crates.io redox_users 0.5.3; relibc still locks GitLab andypython/object da781336d847df0deb897ed1162785f6c2057c56. Exact pin locations are in the ledger.
- PendingSourceAdoption: zsh recipe still pins the official zsh-5.9 archive and patch/script, not private zsh fc3cff4f8e28a0dcac7b6dfb7f21d45fd3a06250. No source pins or source repositories were pushed.
- Publication: pending; successful baselines advance only after remote commit and bytes are read back.

The weekly task runs Monday 05:55 Asia/Singapore. Freeze all source revisions once at run start; ignore later source pushes until the next run. Only package main is rechecked for ordinary fast-forward publication. Full inputs and hashes: [binary-inputs.json](binary-inputs.json).
