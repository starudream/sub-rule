#!/usr/bin/env bash

echo "# sub-rule" >README.md
echo "[" >public.json

# shellcheck disable=SC2010
for file in $(ls Clash/config | grep .ini); do
  echo "- [${file}](https://raw.githubusercontent.com/starudream/sub-rule/master/Clash/config/${file})" >>README.md
  echo >>README.md
  echo "{\"label\": \"${file}\",\"value\": \"https://raw.githubusercontent.com/starudream/sub-rule/master/Clash/config/${file}\"}," >>public.json
done

sed -i '$ s/.$//' public.json
echo "]" >>public.json
