# Package sources

The source locations below come from the actual recipes and package metadata.
Source revision/hash values identify upstream inputs; `local_source` is not a reproducibility claim.

For GNU packages, obtain the exact upstream archive below, apply the accompanying
patches in [build-inputs](build-inputs/), then follow the accompanying recipe.
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
| base | [base source](https://gitlab.redox-os.org/redox-os/base) | `local modifications; MIT-licensed private fork` |
| bash | [bash source](https://ftp.gnu.org/gnu/bash/bash-5.3.tar.gz) | `5bf3ac6c18f3dc3fe3e049a1e10ea5ae5c5b39dac2356cd796730f49b273fd0f` |
| bootloader | [bootloader source](https://gitlab.redox-os.org/redox-os/bootloader) | `local modifications; MIT-licensed private fork` |
| bottom | [bottom source](https://github.com/jackpot51/bottom/tree/87b9106ffd27a512315096d831a03a1079e79323) | `87b9106ffd27a512315096d831a03a1079e79323` |
| ca-certificates | [ca-certificates source](https://gitlab.redox-os.org/redox-os/ca-certificates/-/tree/4955c9001ad38451fe2b7b2bf5bf85b1b5aef390) | `4955c9001ad38451fe2b7b2bf5bf85b1b5aef390` |
| coreutils | [coreutils source](https://gitlab.redox-os.org/redox-os/coreutils/-/tree/575a46d3b624ad9cd222c9e3250073e9269c3462) | `575a46d3b624ad9cd222c9e3250073e9269c3462` |
| curl | [curl source](https://github.com/curl/curl/tree/a05f34973e6c4bb629d018f7cb51487be1c904d8) | `a05f34973e6c4bb629d018f7cb51487be1c904d8` |
| diffutils | [diffutils source](https://ftp.gnu.org/gnu/diffutils/diffutils-3.6.tar.xz) | `086a95093c15edcdb826e75ff4de6c2213de6fbd2eb13538d07bdc3286dfb4a4` |
| expat | [expat source](https://github.com/libexpat/libexpat/releases/download/R_2_5_0/expat-2.5.0.tar.xz) | `ea89dd9a5a2e48d5e44fed38554b36a8f2e365a5091a99d08e30bfb1c15dda5e` |
| extrautils | [extrautils source](https://gitlab.redox-os.org/redox-os/extrautils/-/tree/97bf8c6b6eade670e98de18a04a6f1b08ebcaf84) | `97bf8c6b6eade670e98de18a04a6f1b08ebcaf84` |
| findutils | [findutils source](https://gitlab.redox-os.org/redox-os/findutils/-/tree/116c044399318bf1c77a0d97371b61999ee170b4) | `116c044399318bf1c77a0d97371b61999ee170b4` |
| gettext | [gettext source](https://ftp.gnu.org/gnu/gettext/gettext-0.22.5.tar.gz) | `cb3f3a34da7ce1a92746df81f5b78c5d53841973a24eb80ab76537263d380ec0` |
| git | [git source](https://www.kernel.org/pub/software/scm/git/git-2.13.1.tar.xz) | `bc78271bffd60c5b8b938d8c08fd74dc2de8d21fbaf8f8e0e3155436d9263f17` |
| installer | [installer source](https://gitlab.redox-os.org/redox-os/installer) | `local_source` |
| ion | [ion source](https://gitlab.redox-os.org/redox-os/ion/-/tree/e9b3ca48b7ab6444498d5c3aa902d471ce29f759) | `e9b3ca48b7ab6444498d5c3aa902d471ce29f759` |
| kernel | [kernel source](https://gitlab.redox-os.org/redox-os/kernel/-/tree/d4ffe6dbfe907053a125ee946f7212fb23dcb905) | `d4ffe6dbfe907053a125ee946f7212fb23dcb905` |
| kibi | [kibi source](https://github.com/ilai-deutel/kibi/tree/805819d57228cf4f2b64a7313f6d473348a4a844) | `805819d57228cf4f2b64a7313f6d473348a4a844` |
| libiconv | [libiconv source](https://ftp.gnu.org/gnu/libiconv/libiconv-1.17.tar.gz) | `820b3b9fd3e2181bfb95475f01e9a3451e6d751e4f8c98ebcdcca1d8aa720f7f` |
| libonig | [libonig source](https://github.com/kkos/oniguruma/tree/f95747b462de672b6f8dbdeb478245ddf061ca53) | `f95747b462de672b6f8dbdeb478245ddf061ca53` |
| ncursesw | [ncursesw source](https://ftp.gnu.org/gnu/ncurses/ncurses-6.6.tar.gz) | `fbec55697a01f99b9cc3f25be55e73ae7091f4c53e5d81a1ea15734c4e5b7238` |
| netdb | [netdb source](https://gitlab.redox-os.org/redox-os/netdb/-/tree/2c1560629852f10c8cc3dde3d254f7c753d7557d) | `2c1560629852f10c8cc3dde3d254f7c753d7557d` |
| netutils | [netutils source](https://gitlab.redox-os.org/redox-os/netutils/-/tree/4900bdc333e291abc61ac8790908a295ec92cd0b) | `4900bdc333e291abc61ac8790908a295ec92cd0b` |
| nghttp2 | [nghttp2 source](https://github.com/nghttp2/nghttp2/releases/download/v1.64.0/nghttp2-1.64.0.tar.xz) | `1bbc08de4816769d800c42f501a00c1ba3f5efa1b76e1f65d2e5bdf3aa30354d` |
| openssl3 | [openssl3 source](https://github.com/openssl/openssl/releases/download/openssl-3.5.3/openssl-3.5.3.tar.gz) | `e1622a4587c71c278355bf38ff5a619918bd51e3cd37214d53dd5345b187fc10` |
| orbdata | [orbdata source](https://gitlab.redox-os.org/redox-os/orbdata/-/tree/58d1140176430f222ac0749c8b83349f2c4da916) | `58d1140176430f222ac0749c8b83349f2c4da916` |
| orbital | [orbital source](https://gitlab.redox-os.org/redox-os/orbital/-/tree/a6132b1c2add31def08b4b537271492c17e3e343) | `a6132b1c2add31def08b4b537271492c17e3e343` |
| orbterm | [orbterm source](https://gitlab.redox-os.org/redox-os/orbterm) | `local_source` |
| pkgutils | [pkgutils source](https://gitlab.redox-os.org/redox-os/pkgutils/-/tree/fe21bfd95d869cafd356bcdec4d1a81739ede5ee) | `fe21bfd95d869cafd356bcdec4d1a81739ede5ee` |
| readline | [readline source](https://ftp.gnu.org/gnu/readline/readline-8.3.tar.gz) | `7109f094062bda387a0c16b4875375b96e36437bebbbd8d8f91bb27ba01d687f` |
| redoxfs | [redoxfs source](https://gitlab.redox-os.org/redox-os/redoxfs/-/tree/b87b0976ee122036b2ec040159b890e1e06ca139) | `b87b0976ee122036b2ec040159b890e1e06ca139` |
| relibc | [relibc source](https://gitlab.redox-os.org/redox-os/relibc) | `local_source` |
| terminfo | [terminfo source](https://github.com/sajattack/terminfo/tree/dc5712b13b4a4058ffca1f077167994b1764828a) | `dc5712b13b4a4058ffca1f077167994b1764828a` |
| userutils | [userutils source](https://gitlab.redox-os.org/redox-os/userutils) | `local_source` |
| uutils | [uutils source](https://github.com/uutils/coreutils/tree/bf65901e1ed82963436844c2cf8e796ba9158c65) | `bf65901e1ed82963436844c2cf8e796ba9158c65` |
| uutils-procps | [uutils-procps source](https://github.com/uutils/procps/tree/ee98c0a78fe2abe72589f80eb05b455fa228e757) | `ee98c0a78fe2abe72589f80eb05b455fa228e757` |
| xz | [xz source](https://github.com/tukaani-project/xz/releases/download/v5.2.13/xz-5.2.13.tar.gz) | `edc6350542e8cb7188a878135e5b9bd592d687e5b47451ca1c89d51cc4bc6b53` |
| zlib | [zlib source](https://www.zlib.net/fossils/zlib-1.3.tar.gz) | `ec1abc6f672a7a6ee6f49ba544cc9529f73121b478310473be44fee22a140ebf` |
| zsh | [zsh source](https://github.com/zsh-users/zsh/archive/refs/tags/zsh-5.9.tar.gz) | `a15b94fae03e87aba6fc6a27df3c98e610b85b0c7c0fc90248f07fdcb8816860` |
| zstd | [zstd source](https://github.com/facebook/zstd/releases/download/v1.5.7/zstd-1.5.7.tar.gz) | `730dca31244abd219e995f03a55d95b2cfb4b3e16cda055a79fa6f30a4f0e1db` |

GNU package license mapping: bash/readline/diffutils/gettext use GPLv3;
Git uses GPLv2; libiconv contains LGPLv2.1 libraries and GPLv3 utilities.
See each complete upstream source archive for copyright and license details.
