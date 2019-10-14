#!/usr/bin/env bash

declare -a repos=(
  "rawdata-converter-core"
  "rawdata-converter-app-freg"
  "rawdata-converter-app-sirius"
)

printf '\nrawdata-converter-project'
echo "----------------------------------------------------------------"
git status --short

for repo in "${repos[@]}"
do
  printf '\n%s' "${repo}"
  echo "----------------------------------------------------------------"
  git -C ${repo} status --short
done
