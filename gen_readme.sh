#!/usr/bin/env bash

echo "# sub-rule" >README.md

# shellcheck disable=SC2010
for file in $(ls Clash/config | grep .ini); do
  echo "
- ${file}
  - https://raw.githubusercontent.com/starudream/sub-rule/master/Clash/config/${file}
  - https://cdn.jsdelivr.net/gh/starudream/sub-rule/Clash/config/${file}
" >>README.md
done
