#!/bin/sh

declare -a repos=(
	"no.ssb.rawdata-converter-core"
	"no.ssb.rawdata-converter-app-freg"
)

for repo in "${repos[@]}"
do
	git -C ${repo}/ pull --rebase
done

