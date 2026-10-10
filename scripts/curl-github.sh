#!/bin/sh
set -eu

# Cookbook uses exactly curl -sSL URL. Authenticate only this package repo.
if [ "$#" -eq 2 ] && [ "$1" = '-sSL' ]; then
    case "$2" in
        https://api.github.com/repos/RedoxORG/redox-pkgs/contents/*)
            # gh reads its existing login; tokens never appear in arguments.
            exec /usr/local/bin/gh api --hostname github.com --method GET \
                -H 'Accept: application/vnd.github.raw' \
                "${2#https://api.github.com/}"
            ;;
    esac
fi

# Preserve every unrelated curl invocation and its original arguments.
exec /usr/bin/curl "$@"
