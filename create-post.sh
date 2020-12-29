#!/bin/bash

set -o errexit

readonly DATE="$(date +'%Y-%m-%d')"
read INPUT
readonly ASCII_TITLE="$(iconv -f utf-8 -t ascii//translit <<<"$INPUT" | tr -d ',.?' | tr '[:space:]' '-'  | tr '[:upper:]' '[:lower:]')"
readonly FILE_NAME="_posts/${DATE}-${ASCII_TITLE}.md"

touch "$FILE_NAME"

cat - <<EOF > "$FILE_NAME"
---
layout: post
title:  "$INPUT"
date:   $DATE $(date +"%H:%M:%S %z")
categories: []
comments: true
---

Here is the content.
EOF
