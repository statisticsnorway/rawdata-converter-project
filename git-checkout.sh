#!/usr/bin/env bash

declare -a repos=(
  "rawdata-converter-core"
  "rawdata-converter-app-freg"
  "rawdata-converter-app-sirius"
)

for repo in "${repos[@]}"
do
  echo git clone git@github.com:statisticsnorway/${repo}.git
  git clone git@github.com:statisticsnorway/${repo}.git
done
