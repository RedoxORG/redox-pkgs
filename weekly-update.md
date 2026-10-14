# Current package update

Manual run: 2026-10-14, one startup freeze; 13 private repositories, pages [13, 0].

- Built and verified: base (inputd keyboard implementation) and bash (skeleton rc packaging). Normal Cookbook/Make, jobs=2, verified warm SDK/cache, fresh affected outputs.
- Source/cache identity before/after PASS; existing-key signature/extracted payload/metadata/index PASS.
- Normal Make server image boot, root login, physical keyboard typed Bash alias command and guest completion marker PASS. 120 installed package files/links and 12 committed shared configuration entries PASS. Initfs inputd matches this run fresh initfs build variant.
- Keyboard host tests: 14 PASS, directly including production files. Extra PS/2 fixture failed before login marker and entered no cases; Caps/Num specialized guest cases remain NotRun. This is not relabeled as a successful runtime test.
- Other 37 archives/metadata and public key unchanged; existing missing historical complete baselines remain unknown. bootloader/relibc/uefi only add rust-analyzer, compiler channel unchanged.
- users/object remain unadopted at the recorded consumer pins. No source lock changes or source pushes. Shared shell/shutdown files are committed image configuration, not fabricated binary packages.
- Publication NotRun; successful input baselines remain the preceding verified release until exact remote SHA/file-byte readback.

Weekly cadence remains Monday 05:55 Asia/Singapore. Later source pushes wait for the next run.
