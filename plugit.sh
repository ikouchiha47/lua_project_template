#!/usr/bin/env bash

set -e

TMPL_FILENAME="$1"

if [[ -z "${TMPL_FILENAME}" ]]; then
    TMPL_FILENAME="plugin.tmpl.lua"
fi

if [[  ! -f "${TMPL_FILENAME}" ]]; then
    echo "Template file: ${TMPL_FILENAME} not found."
    echo "in present directory"
    exit 1
fi


output=$(cat "${TMPL_FILENAME}" | envsubst)

output_filename="${PLUGIN:-unnamed_plugin}.lua"

echo "$output" > "$output_filename"

echo "Rendered template to $output_filename"
echo "Copy it to your neovim plugin path"
