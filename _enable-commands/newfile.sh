#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title new file
# @raycast.mode silent
# @raycast.author weitanai
# @raycast.authorURL https://github.com/weitanai

# Optional parameters:
# @raycast.icon 📦
# @raycast.packageName new file
# @raycast.argument1 { "type": "text", "placeholder": "file name", "percentEncoded": true }


if [[ -z "${out_dir}" ]]; then
  out_dir=${HOME}"/Desktop/"
fi

extension="${1##*.}"
out_path="${out_dir}${1}"

if [[ -f "${out_path}" ]]; then
  echo "${1} already exists"
else
  template="/Users/max/raycast/_enable-commands/default_templates/${extension}.${extension}" 
  if [[ -f "${template}" ]]; then
    cp  "${template}" "${out_path}"
    echo "${1} created in ${out_dir}"
  else
    echo 'Failed! Unsupported file type, please add template file first.'
  fi
fi

open "${out_dir}"