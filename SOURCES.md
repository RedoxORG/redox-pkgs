# Package sources

The source locations below come from the actual recipes and package metadata.
Source revision/hash values identify upstream inputs; `local_source` is not a reproducibility claim.

For packages with existing support files in [build-inputs](build-inputs/), obtain
the exact upstream archive below and follow those accompanying recipes and patches.
For this batch, recipe and patch identities refer to the frozen Redox commit below;
no new recipe, patch or configuration source copies are included.
Bash also uses the accompanying `etc/` files and SYS_BASHRC build option.
Bash's 1,569 original regular source files were compared against the original
5.3 archive: no missing files or content changes. Generated additional files
were outside that comparison. No additional Bash source patch is required.
The included Cookbook helper is byte-identical to official Redox commit
`54ad8740ad420dd2dff27a9fc757201cc06fed57`, file `src/cook/script.rs`.
Complete upstream source archives include their original copyright notices.
This distributor is responsible for keeping corresponding source available;
report an unavailable source using the repository maintainer contact.
Maintainer: <https://github.com/zengfanfan>.

GNU license texts: [GPLv2](licenses/GPL-2.txt), [GPLv3](licenses/GPL-3.txt),
[LGPLv2.1](licenses/LGPL-2.1.txt). Other packages retain their respective
upstream licenses, not a blanket MIT or GPL license.

| Package | Upstream source | Source identifier / archive BLAKE3 |
| --- | --- | --- |
| base | [base source](https://github.com/RedoxORG/base) | `cf6b4e73e8ee20e1932fa8627622ac16c35ef459` |
| bash | [bash source](https://ftp.gnu.org/gnu/bash/bash-5.3.tar.gz) | `5bf3ac6c18f3dc3fe3e049a1e10ea5ae5c5b39dac2356cd796730f49b273fd0f` |
| bootloader | [bootloader source](https://github.com/RedoxORG/bootloader/tree/13358e87cc3c6e1225c42db07c3dce4280a734f5) | `13358e87cc3c6e1225c42db07c3dce4280a734f5` |
| bottom | [bottom source](https://github.com/jackpot51/bottom/tree/87b9106ffd27a512315096d831a03a1079e79323) | `87b9106ffd27a512315096d831a03a1079e79323` |
| ca-certificates | [ca-certificates source](https://gitlab.redox-os.org/redox-os/ca-certificates/-/tree/4955c9001ad38451fe2b7b2bf5bf85b1b5aef390) | `4955c9001ad38451fe2b7b2bf5bf85b1b5aef390` |
| coreutils | [coreutils source](https://gitlab.redox-os.org/redox-os/coreutils.git) | `575a46d3b624ad9cd222c9e3250073e9269c3462` |
| curl | [curl source](https://github.com/curl/curl.git) | `a05f34973e6c4bb629d018f7cb51487be1c904d8` |
| diffutils | [diffutils source](https://ftp.gnu.org/gnu/diffutils/diffutils-3.6.tar.xz) | `086a95093c15edcdb826e75ff4de6c2213de6fbd2eb13538d07bdc3286dfb4a4` |
| expat | [expat source](https://github.com/libexpat/libexpat/releases/download/R_2_5_0/expat-2.5.0.tar.xz) | `ea89dd9a5a2e48d5e44fed38554b36a8f2e365a5091a99d08e30bfb1c15dda5e` |
| extrautils | [extrautils source](https://gitlab.redox-os.org/redox-os/extrautils.git) | `97bf8c6b6eade670e98de18a04a6f1b08ebcaf84` |
| findutils | [findutils source](https://codeload.github.com/uutils/findutils/tar.gz/41e7a599f59198617e2e152da5bc3eaa2f87ac0b) | `ca228c20709dbccaae25a2447b1389877b0d87d4e5024dece2a70f8603d69f2b` |
| gettext | [gettext source](https://ftp.gnu.org/gnu/gettext/gettext-0.22.5.tar.gz) | `cb3f3a34da7ce1a92746df81f5b78c5d53841973a24eb80ab76537263d380ec0` |
| git | [git source](https://www.kernel.org/pub/software/scm/git/git-2.56.0.tar.gz) | `6336e4670a1a99bb8dd666791317b5ba60ab27b3ae24d5a284013b4f233b30f0` |
| gnu-make | [gnu-make source](http://ftp.gnu.org/gnu/make/make-4.4.tar.gz) | `1a0e5353205e106bd9b3c0f4a5f37ee1156a1e1c8feb771d1b4842c216612cba` |
| installer | [installer private source](https://github.com/RedoxORG/installer/tree/8ce7e5f94b39f2db8b86834f54d9f405d7cc679c) | `8ce7e5f94b39f2db8b86834f54d9f405d7cc679c` |
| ion | [ion source](https://gitlab.redox-os.org/redox-os/ion.git) | `e9b3ca48b7ab6444498d5c3aa902d471ce29f759` |
| kernel | [kernel source](https://github.com/RedoxORG/kernel) | `92ab1e25c4c9492f90a9bf4b42771438e3aff386` |
| kibi | [kibi source](https://github.com/ilai-deutel/kibi/tree/805819d57228cf4f2b64a7313f6d473348a4a844) | `805819d57228cf4f2b64a7313f6d473348a4a844` |
| libedit | [libedit source](https://www.thrysoee.dk/editline/libedit-20250104-3.1.tar.gz) | `no_tar_blake3_hash_info` |
| libgcc | [libgcc source](https://gitlab.redox-os.org/redox-os/redox/-/blob/332fb5e78561e6805ddd87bc8758093f02f564ba/recipes/libs/libgcc/recipe.toml) | `local_source` |
| libiconv | [libiconv source](https://ftp.gnu.org/gnu/libiconv/libiconv-1.17.tar.gz) | `820b3b9fd3e2181bfb95475f01e9a3451e6d751e4f8c98ebcdcca1d8aa720f7f` |
| libldns | [libldns source](https://github.com/NLnetLabs/ldns) | `06466f0a20dc298a9dd6f444c15fa568398fff3c` |
| libonig | [libonig source](https://github.com/kkos/oniguruma/tree/f95747b462de672b6f8dbdeb478245ddf061ca53) | `f95747b462de672b6f8dbdeb478245ddf061ca53` |
| libstdcxx | [libstdcxx source](https://gitlab.redox-os.org/redox-os/redox/-/blob/332fb5e78561e6805ddd87bc8758093f02f564ba/recipes/libs/libstdcxx/recipe.toml) | `local_source` |
| lz4 | [lz4 source](https://github.com/lz4/lz4/releases/download/v1.10.0/lz4-1.10.0.tar.gz) | `3e69fd475e7852e17594985528b5232afeba7d3d56cfebe2e89071768b2ab36a` |
| nano | [nano source](https://www.nano-editor.org/dist/v9/nano-9.2.tar.xz) | `6a4dd380f6ee2bb2d74851c182090774f61eddfc37d9ff4d060b69f2c0fe4646` |
| ncurses | [ncurses source](https://ftp.gnu.org/gnu/ncurses/ncurses-6.6.tar.gz) | `fbec55697a01f99b9cc3f25be55e73ae7091f4c53e5d81a1ea15734c4e5b7238` |
| ncursesw | [ncursesw source](https://gitlab.redox-os.org/redox-os/redox/-/blob/332fb5e78561e6805ddd87bc8758093f02f564ba/recipes/libs/ncursesw/recipe.toml) | `fbec55697a01f99b9cc3f25be55e73ae7091f4c53e5d81a1ea15734c4e5b7238` |
| netdb | [netdb source](https://gitlab.redox-os.org/redox-os/netdb/-/tree/2c1560629852f10c8cc3dde3d254f7c753d7557d) | `2c1560629852f10c8cc3dde3d254f7c753d7557d` |
| netutils | [netutils source](https://gitlab.redox-os.org/redox-os/netutils/-/tree/4900bdc333e291abc61ac8790908a295ec92cd0b) | `4900bdc333e291abc61ac8790908a295ec92cd0b` |
| nghttp2 | [nghttp2 source](https://github.com/nghttp2/nghttp2/releases/download/v1.64.0/nghttp2-1.64.0.tar.xz) | `1bbc08de4816769d800c42f501a00c1ba3f5efa1b76e1f65d2e5bdf3aa30354d` |
| openssh | [openssh source](https://cdn.openbsd.org/pub/OpenBSD/OpenSSH/portable/openssh-10.6p1.tar.gz) | `5b27910392630fe98eaef74e2ed72ad3416e108ee4234f1be7228c681e515137` |
| openssl3 | [openssl3 source](https://github.com/openssl/openssl/releases/download/openssl-3.5.3/openssl-3.5.3.tar.gz) | `e1622a4587c71c278355bf38ff5a619918bd51e3cd37214d53dd5345b187fc10` |
| orbdata | [orbdata source](https://gitlab.redox-os.org/redox-os/orbdata/-/tree/58d1140176430f222ac0749c8b83349f2c4da916) | `58d1140176430f222ac0749c8b83349f2c4da916` |
| orbital | [orbital source](https://gitlab.redox-os.org/redox-os/orbital/-/tree/a6132b1c2add31def08b4b537271492c17e3e343) | `a6132b1c2add31def08b4b537271492c17e3e343` |
| orbterm | [orbterm source](https://gitlab.redox-os.org/redox-os/orbterm/-/tree/ba1243cd6bc0230ca00aac5d550fe17e727e2b46) | `ba1243cd6bc0230ca00aac5d550fe17e727e2b46` |
| pkgutils | [pkgutils source](https://gitlab.redox-os.org/redox-os/pkgutils/-/tree/fe21bfd95d869cafd356bcdec4d1a81739ede5ee) | `fe21bfd95d869cafd356bcdec4d1a81739ede5ee` |
| readline | [readline source](https://ftp.gnu.org/gnu/readline/readline-8.3.tar.gz) | `7109f094062bda387a0c16b4875375b96e36437bebbbd8d8f91bb27ba01d687f` |
| redoxfs | [redoxfs source](https://gitlab.redox-os.org/redox-os/redoxfs.git) | `b87b0976ee122036b2ec040159b890e1e06ca139` |
| relibc | [relibc source](https://github.com/RedoxORG/relibc) | `dfbadb7377bd2cc29737d1a35727def06b0994b8` |
| rsync | [rsync source](https://download.samba.org/pub/rsync/src/rsync-3.4.1.tar.gz) | `e1cfdd51a1a89a49e73f8fa730a4321392fe4a29533c0979c2c09c7ce3808b6f` |
| termcap | [termcap source](https://ftp.gnu.org/gnu/termcap/termcap-1.3.1.tar.gz) | `57c095e0bb6e60e7b4a0597f51f7ac15b501ca0f95d37424d8d13978d28b8da3` |
| terminfo | [terminfo source](https://github.com/sajattack/terminfo/tree/dc5712b13b4a4058ffca1f077167994b1764828a) | `dc5712b13b4a4058ffca1f077167994b1764828a` |
| userutils | [userutils source](https://github.com/RedoxORG/userutils) | `3ac3b00426e66b58bbf732102cc6d45ad16130b3` |
| uutils | [uutils source](https://github.com/uutils/coreutils) | `bf65901e1ed82963436844c2cf8e796ba9158c65` |
| uutils-grep | [uutils-grep source](https://github.com/uutils/grep) | `2ff48db61cb0588a89115461db1c0baf686bce83` |
| uutils-hostname | [uutils-hostname source](https://github.com/uutils/hostname) | `a6e1a935775fcde6e781f3b73017287835b478a5` |
| uutils-procps | [uutils-procps source](https://github.com/uutils/procps) | `ee98c0a78fe2abe72589f80eb05b455fa228e757` |
| vim | [vim source](https://github.com/vim/vim/archive/refs/tags/v9.1.0821.tar.gz) | `d1f5802ceb047b09143f1764bf4016f084cf7e6c026c7047919264c9f262a5dd` |
| wget | [wget source](https://ftp.gnu.org/gnu/wget/wget-1.21.4.tar.gz) | `1c3c31259d23ed3890535fd3b8713082c74e41d459c8f290c1650ab1afab8f35` |
| xxhash | [xxhash source](https://github.com/Cyan4973/xxHash) | `bab7e27f4c6ae4efbb83dd99ae8a554423571635` |
| xz | [xz source](https://github.com/tukaani-project/xz/releases/download/v5.2.13/xz-5.2.13.tar.gz) | `edc6350542e8cb7188a878135e5b9bd592d687e5b47451ca1c89d51cc4bc6b53` |
| zlib | [zlib source](https://www.zlib.net/fossils/zlib-1.3.tar.gz) | `ec1abc6f672a7a6ee6f49ba544cc9529f73121b478310473be44fee22a140ebf` |
| zsh | [private zsh source](https://github.com/RedoxORG/zsh/tree/fc3cff4f8e28a0dcac7b6dfb7f21d45fd3a06250) | `fc3cff4f8e28a0dcac7b6dfb7f21d45fd3a06250`; original Redox prepare/local binding |
| zstd | [zstd source](https://github.com/facebook/zstd/releases/download/v1.5.7/zstd-1.5.7.tar.gz) | `730dca31244abd219e995f03a55d95b2cfb4b3e16cda055a79fa6f30a4f0e1db` |

GNU package license mapping: bash/readline/diffutils/gettext use GPLv3;
Git uses GPLv2; libiconv contains LGPLv2.1 libraries and GPLv3 utilities.
See each complete upstream source archive for copyright and license details.

Current batch (2026-10-20): frozen Redox recipe/config commit `851e1e578b9254a0f69aa2f6715155d5bf07b220`; 17 source-built candidates and 16 verified official-distribution candidates. The other 22 package archives and metadata remain unchanged. Status: `PendingPublication`; independent remote-consumer acceptance has not yet run. Full input identities and validation provenance are in `binary-inputs.json`; later source pushes are deferred.

Historical batch (2026-10-15): frozen Redox commit `b4b0b533f3232164203778bb815f32174d28d747` updated base, bootloader, orbterm and redoxfs, retaining the other 35 packages at that time. This historical count and source selection do not describe the current batch.

Zsh uses the frozen private source and original [recipe, patch and binding](build-inputs/wip/shells/zsh/). Its permissive [license](licenses/zsh.txt) is preserved. The source recipe was not pushed or modified; controlled prepare and actual compilation identities are in binary-inputs.json.

In the historical 2026-10-15 batch, base and bootloader were private-source builds; orbterm and redoxfs were verified official binaries re-signed without installation-content changes. In the current batch, redoxfs is a source-built candidate; the 16 official-distribution candidates retain their verified installation contents under the existing repository signing key. Bash and bootloader are unchanged. Image configuration comes from the current frozen Redox commit and is not a separate binary package.
Recipe/file distribution copies follow the existing LF text normalization; the original committed Git blob and byte hashes are recorded separately in the input ledger.

The base console includes Dina bitmap fonts. See [Dina license](licenses/Dina.txt); the notice is copied byte-for-byte from the frozen base source.
