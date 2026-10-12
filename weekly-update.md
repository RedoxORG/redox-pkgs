# Current package update

Run: 2026-10-12 frozen inputs; validation completed 2026-10-13.

- Actual compilation PASS: base, bootloader, relibc, installer, userutils, bash.
- Existing private public key retained; six signatures and extracted payloads PASS.
- Normal Make binary/offline server image PASS. Normal QEMU boot, root login, Bash 5.3, background wait PASS. Installed core files and initfs inputd match this run outputs. Installer CLI and GUI packages were not runtime-tested.
- The earlier six-package release kept 33 archives/metadata unchanged. The zsh continuation below replaces one of these; other 38 remain unchanged relative to that published release. Historical missing complete baselines remain explicitly unknown.
- relibc exports unchanged (3252); only math.h adds a typedef guard. No global ELF rebuild is justified.
- PendingDependency: userutils still locks crates.io redox_users 0.5.3; relibc still locks GitLab andypython/object da781336d847df0deb897ed1162785f6c2057c56. Exact pin locations are in the ledger.
- Zsh continuation: frozen private fc3cff4f8e28a0dcac7b6dfb7f21d45fd3a06250 now built with original committed Redox prepare plus local binding. Fresh normal compilation, existing-key signature/payload, normal image and all 1172 installed files PASS. Actual version 5.9.999.3-test, compinit, _git/_7zip and background wait PASS. Zsh publication pending; other 38 packages unchanged. Existing relibc getrusage informational logs are retained as a known limitation. No source pins or source repositories were pushed.
- Publication PASS: [5f29a6ed](https://github.com/RedoxORG/redox-pkgs/commit/5f29a6ed3b11ae242e6a152356182317175bca97), ordinary fast-forward. Exact main SHA and all 19 changed/public-key files were read back via immutable Git blob API and matched committed bytes; six complete successful baselines now advanced.

The weekly task runs Monday 05:55 Asia/Singapore. Freeze all source revisions once at run start; ignore later source pushes until the next run. Only package main is rechecked for ordinary fast-forward publication. Full inputs and hashes: [binary-inputs.json](binary-inputs.json).
