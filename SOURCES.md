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
| base | [base source](https://github.com/RedoxORG/base) | `33c7875d601d9bb0f30a19cc2489fa7692b69892` |
| bash | [bash source](https://ftp.gnu.org/gnu/bash/bash-5.3.tar.gz) | `5bf3ac6c18f3dc3fe3e049a1e10ea5ae5c5b39dac2356cd796730f49b273fd0f` |
| bootloader | [bootloader source](https://github.com/RedoxORG/bootloader) | `13358e87cc3c6e1225c42db07c3dce4280a734f5` |
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
| installer | [installer source](https://github.com/RedoxORG/installer) | `5d822e6a9fae1f4b60e8cd33fd757972dcbb6a41` |
| ion | [ion source](https://gitlab.redox-os.org/redox-os/ion.git) | `e9b3ca48b7ab6444498d5c3aa902d471ce29f759` |
| kernel | [kernel source](https://github.com/RedoxORG/kernel) | `a6c79673cb5b1ce7842dfe5f0500a6763136cbe4` |
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
| ncursesw | [ncursesw source](https://ftp.gnu.org/gnu/ncurses/ncurses-6.6.tar.gz) | `fbec55697a01f99b9cc3f25be55e73ae7091f4c53e5d81a1ea15734c4e5b7238` |
| netdb | [netdb source](https://gitlab.redox-os.org/redox-os/netdb/-/tree/2c1560629852f10c8cc3dde3d254f7c753d7557d) | `2c1560629852f10c8cc3dde3d254f7c753d7557d` |
| netutils | [netutils source](https://gitlab.redox-os.org/redox-os/netutils.git) | `4900bdc333e291abc61ac8790908a295ec92cd0b` |
| nghttp2 | [nghttp2 source](https://github.com/nghttp2/nghttp2/releases/download/v1.64.0/nghttp2-1.64.0.tar.xz) | `1bbc08de4816769d800c42f501a00c1ba3f5efa1b76e1f65d2e5bdf3aa30354d` |
| openssh | [openssh source](https://cdn.openbsd.org/pub/OpenBSD/OpenSSH/portable/openssh-10.6p1.tar.gz) | `5b27910392630fe98eaef74e2ed72ad3416e108ee4234f1be7228c681e515137` |
| openssl3 | [openssl3 source](https://github.com/openssl/openssl/releases/download/openssl-3.5.3/openssl-3.5.3.tar.gz) | `e1622a4587c71c278355bf38ff5a619918bd51e3cd37214d53dd5345b187fc10` |
| orbdata | [orbdata source](https://gitlab.redox-os.org/redox-os/orbdata/-/tree/58d1140176430f222ac0749c8b83349f2c4da916) | `58d1140176430f222ac0749c8b83349f2c4da916` |
| orbital | [orbital source](https://gitlab.redox-os.org/redox-os/orbital/-/tree/a6132b1c2add31def08b4b537271492c17e3e343) | `a6132b1c2add31def08b4b537271492c17e3e343` |
| orbterm | [orbterm source](https://gitlab.redox-os.org/redox-os/orbterm/-/tree/ba1243cd6bc0230ca00aac5d550fe17e727e2b46) | `ba1243cd6bc0230ca00aac5d550fe17e727e2b46` |
| pkgutils | [pkgutils source](https://gitlab.redox-os.org/redox-os/pkgutils/-/tree/fe21bfd95d869cafd356bcdec4d1a81739ede5ee) | `fe21bfd95d869cafd356bcdec4d1a81739ede5ee` |
| readline | [readline source](https://ftp.gnu.org/gnu/readline/readline-8.3.tar.gz) | `7109f094062bda387a0c16b4875375b96e36437bebbbd8d8f91bb27ba01d687f` |
| redoxfs | [redoxfs source](https://github.com/RedoxORG/redoxfs) | `15c9e20814279c009e9d6033a70cadf3e693aca7` |
| relibc | [relibc source](https://github.com/RedoxORG/relibc) | `89dd058bb497a8d08981e62b23cf3c4d747e7aad` |
| rsync | [rsync source](https://download.samba.org/pub/rsync/src/rsync-3.4.1.tar.gz) | `e1cfdd51a1a89a49e73f8fa730a4321392fe4a29533c0979c2c09c7ce3808b6f` |
| termcap | [termcap source](https://ftp.gnu.org/gnu/termcap/termcap-1.3.1.tar.gz) | `57c095e0bb6e60e7b4a0597f51f7ac15b501ca0f95d37424d8d13978d28b8da3` |
| terminfo | [terminfo source](https://github.com/sajattack/terminfo/tree/dc5712b13b4a4058ffca1f077167994b1764828a) | `dc5712b13b4a4058ffca1f077167994b1764828a` |
| userutils | [userutils source](https://github.com/RedoxORG/userutils) | `d9fbde33246fff004e0a6e7a394e755b38c6f2c0` |
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
| mandoc | [mandoc source](https://mandoc.bsd.lv/snapshots/mandoc-1.14.6.tar.gz) | `0e1e812610cea4d9a254d161599466abccd3688568f19baeff1c2ed0dae586e4` |
| bzip2 | [official source](https://sourceware.org/pub/bzip2/bzip2-1.0.8.tar.gz) | `97af3f520629c65fe41292f77e6ca798fe594d7987bfb2aebe7c6fcdc7ab5ed2` |
| cmake | [cmake source](https://github.com/Kitware/CMake/releases/download/v4.3.2/cmake-4.3.2.tar.gz) | `cbd0121189df1502f61e8f12f044b4a901b1ea16c74c016b85714e4661b8537f` |
| dash | [dash source](https://gitlab.redox-os.org/redox-os/dash.git) | `85b748659b74c2337b27347a21ee121364472156` |
| exuberant-ctags | [exuberant-ctags source](https://sourceforge.net/projects/ctags/files/ctags/5.8/ctags-5.8.tar.gz/download) | `f9781861962691b33335449261074f2b153bdb91404d25172a622a41a347e237` |
| fd | [fd source](https://github.com/sharkdp/fd.git) | `840a565d3aadbeb303b10a01c0aa3561924dfc46` |
| file | [file source](https://astron.com/pub/file/file-5.46.tar.gz) | `b90f74a21efef2d49572add801a2dd450c61e886f9d56af76f9dcb656268edbc` |
| gawk | [gawk source](https://ftp.gnu.org/gnu/gawk/gawk-5.2.0.tar.xz) | `31b907e8223fc265b73d94f32a6fce8082993da8558ed6e9f4ec95cdb98ad032` |
| gcc13 | [official source](https://gitlab.redox-os.org/redox-os/gcc) | `92885e26ab78f5bbbcb00bb9056f593629f6d7e2` |
| gcc13.cxx | [official source](https://gitlab.redox-os.org/redox-os/gcc) | `92885e26ab78f5bbbcb00bb9056f593629f6d7e2` |
| gnu-binutils | [gnu-binutils source](https://ftp.gnu.org/gnu/binutils/binutils-2.43.1.tar.xz) | `f074c81313b70eabc58ce9a9411cd771c5fa2433792d0ad8abcc45f603f58ed6` |
| killall | [killall source](https://github.com/RedoxORG/redox/tree/0d005e2c023b6647d99832679a2f0b5afe7cf67b/recipes/core/killall/src) | `None` |
| less | [less source](https://greenwoodsoftware.com/less/less-633.tar.gz) | `c3182f60937dc9f5faa3da5882787e9e1ebca04130311c98318863d24138a1f4` |
| libarchive | [libarchive source](https://libarchive.org/downloads/libarchive-3.8.7.tar.xz) | `6b7f744132368a53ecf98a4586af09c255f81cebf37687edd857528a1bfd3bd3` |
| libgmp | [official source](https://ftp.gnu.org/gnu/gmp/gmp-6.3.0.tar.xz) | `fffe4996713928ae19331c8ef39129e46d3bf5b7182820656fd4639435cd83a4` |
| libmpfr | [official source](https://www.mpfr.org/mpfr-current/mpfr-4.2.2.tar.xz) | `11d59d061ef8db588650bc7dc5172594a6e5aad013994801c6f63011a62b191d` |
| libuv | [official source](https://dist.libuv.org/dist/v1.51.0/libuv-v1.51.0.tar.gz) | `e8b5e68bc2d0776ac4ea67df59d694fca58d5cc570c103443a2284e723d01fc2` |
| libxml2 | [official source](https://download.gnome.org/sources/libxml2/2.11/libxml2-2.11.3.tar.xz) | `0653d3750576299c4cb88740942165671b576ff93019f3d669b3f37136225ab7` |
| lua54 | [lua54 source](https://lua.org/ftp/lua-5.4.7.tar.gz) | `e51c2f347e3185479d5ff95cae8ac77511db486853269443c56bedaa0a6ae629` |
| luarocks | [luarocks source](https://github.com/luarocks/luarocks.git) | `2b492f82dfcc37e247a69435eee051af1a2bb478` |
| mpc | [official source](https://ftp.gnu.org/gnu/mpc/mpc-1.3.1.tar.gz) | `no_tar_blake3_hash_info` |
| pigz | [pigz source](https://www.zlib.net/pigz/pigz-2.8.tar.gz) | `fa165f414a12851806d9d54920879dd989917b9aa410aec671c602b18773b236` |
| ripgrep | [ripgrep source](https://github.com/jackpot51/ripgrep.git) | `174c570dfb3b7b2bdc0c19acfbbb455479c5fee4` |
| sed | [sed source](https://ftp.gnu.org/gnu/sed/sed-4.4.tar.xz) | `a88c12b2b4304e53e3c7ae2eb0499d02e28873c1b9e1a6871e5347c6886a1ecd` |
| sqlite3 | [official source](https://sqlite.org/2025/sqlite-autoconf-3490200.tar.gz) | `96e071dc4f964311882334e927f017d8383915b1b140adcf308957dff213aa8c` |
| whereis | [whereis source](https://gitlab.redox-os.org/redox-os/coreutils.git) | `575a46d3b624ad9cd222c9e3250073e9269c3462` |
| unrar | [unrar source](https://www.rarlab.com/rar/unrarsrc-7.2.6.tar.gz) | `bb19643c5307e8dbbaf2ec0409dd4d6b148ddac17bcd89f1576000c2baa20d32` |

GNU package license mapping: bash/readline/diffutils/gettext use GPLv3;
Git uses GPLv2; libiconv contains LGPLv2.1 libraries and GPLv3 utilities.
See each complete upstream source archive for copyright and license details.

Historical batch (2026-10-20): frozen Redox recipe/config commit `851e1e578b9254a0f69aa2f6715155d5bf07b220`; 17 source-built candidates and 16 verified official-distribution candidates. The other 22 package archives and metadata remain unchanged. Status: `PublishedAndConsumerVerified`; artifacts are published at `34f2d60b64e5a2184045a28e9f32cc5c2376f72c`. An independent clean consumer completed normal Make, remote byte/signature verification, 5,619 installed-file checks, normal boot/login and nine CLI checks. Exact change/publication timing is unproven (`FreshnessUnknown`). Full input identities and validation provenance are in `binary-inputs.json`; later source pushes are deferred.

Historical batch (2026-10-15): frozen Redox commit `b4b0b533f3232164203778bb815f32174d28d747` updated base, bootloader, orbterm and redoxfs, retaining the other 35 packages at that time. This historical count and source selection do not describe the current batch.

Zsh uses the frozen private source and original [recipe, patch and binding](build-inputs/wip/shells/zsh/). Its permissive [license](licenses/zsh.txt) is preserved. The source recipe was not pushed or modified; controlled prepare and actual compilation identities are in binary-inputs.json.

In the historical 2026-10-15 batch, base and bootloader were private-source builds; orbterm and redoxfs were verified official binaries re-signed without installation-content changes. In the historical 2026-10-20 batch, redoxfs was source-built; the 16 official-distribution candidates retain their verified installation contents under the existing repository signing key. Bash and bootloader are unchanged. Image configuration comes from the current frozen Redox commit and is not a separate binary package.
Recipe/file distribution copies follow the existing LF text normalization; the original committed Git blob and byte hashes are recorded separately in the input ledger.

The base console includes Dina bitmap fonts. See [Dina license](licenses/Dina.txt); the notice is copied byte-for-byte from the frozen base source.

Acceptance limitation: the frozen pkgar installer changes `usr/libexec/ssh-keysign` from signed mode `04711` to installed mode `00711` while preserving its bytes. `HostbasedAuthentication` remains `NotVerified`; normal SSH CLI smoke does not establish that feature. This batch does not claim full interactive, networking, persistence or fault-injection acceptance.

Historical batch (2026-10-21): frozen Redox `02481fd0a52710e04b9553b9c86c8fc099da955e`; 10 source-built packages (9 replacements, 1 new); 46 packages unchanged. Status: PublishedAndConsumerVerified; exact remote bytes/signatures and independent normal consumer verified. FreshnessUnknown. Existing getty bulk-input EAGAIN is not fixed; checks use paced input. This is not full interactive, networking, persistence or fault-injection acceptance. Artifact commit `84b6b684a8d67bbf7513333acb79957f04293745`; consumer 21 checks PASS.

Historical batch (2026-10-29): frozen Redox `0d005e2c023b6647d99832679a2f0b5afe7cf67b`; 42 candidate packages (31 source-built and 11 official-derived; 17 replacements, 25 new); 39 packages unchanged. Status: PublishedAndConsumerVerified; exact remote bytes/signatures and independent normal consumer verified. Freshness: MissedDeadline; known missed packages: relibc. Existing getty bulk-input EAGAIN is not fixed; checks use paced input. This is not full interactive, networking, persistence or fault-injection acceptance. Artifact commit `80a8163b1369b3fb485763559460d02efea18bdc`; consumer 33 checks PASS.

Current batch (2026-10-30): frozen Redox `34e4069c9e34c0a0e14d2187739def274ed1e6b5` and relibc `89dd058bb497a8d08981e62b23cf3c4d747e7aad`; 11 source-built package updates (10 replacements, 1 new), with the other 71 packages unchanged. Status: PublishedAndConsumerVerified. Artifact commit `8dea8261a2a7e664bf6454028e7f1e980696dab5`; the independent exact-ref cold consumer verified all 82 package archive/metadata pairs and signed headers, completed normal Make, checked 11,745 installed files across 76 installed packages, and passed normal boot/login plus all 89 planned checks. Cold transport used a new empty native Git object database with command-scoped HTTP/1.1 and low-speed protection; raw-helper download attempts remain failed records. FreshnessUnknown: complete change-event/deadline coverage was not assessed. Existing getty bulk-input EAGAIN remains; checks use paced ASCII/base64 input. The acceptance limitations above remain applicable. Full adopted input identities and evidence are in `binary-inputs.json`.
