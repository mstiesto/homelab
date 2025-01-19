#!/usr/bin/env bash
set -e

for secret in $(find ./values -type 'f' -name 'secrets.*'); do
    sops updatekeys $secret
    sops rotate -i $secret
done