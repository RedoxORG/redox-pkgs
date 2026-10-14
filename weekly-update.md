# Current package update

Manual synchronization: 2026-10-14. Inputs were frozen once for this run.

- Published `base`, `relibc`, `userutils` and `kernel` at `fb01a6592b113900c9412a3b961c5db8a1f92fea` with a normal main fast-forward. All eleven remote files, including the public key, match the reviewed bytes. Four remotely retrieved packages pass native signature verification and extraction.
- Three source packages were compiled from the frozen private integration commits. Kernel 0.5.12 is the verified official distribution, re-signed with the existing private identity without changing its payload; it is not claimed as a local source build.
- The normal producer image boots and logs in to Bash. Four original libc tests and three CLI checks pass. A separate clean remote clone with independent HOME, output and an initially empty private-package cache also completes normal Make, boots, logs in and passes three CLI checks. Its 278 installed package files/links match the remote verified payloads.
- Only original checksum-verified SDK/crate download archives and the same base operating-system container were reused for the consumer; producer packages, installed SDK trees, build targets and local source overrides were not reused.
- Successful source inputs advance only for base, relibc and userutils after remote readback and independent consumer verification. Kernel retains its missing complete source baseline. The other 35 packages and their historical state are unchanged.
- Network, graphics, audio and persistence were not tested. Earlier failed attempts remain failed in the task-local evidence. No signing private key, source checkout, script, raw log or disk image was published.

The exact input identities and receipt hashes are in `binary-inputs.json`, under `manual_sync_20261014_03`. Existing history remains available in Git.
