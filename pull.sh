#!/bin/sh

declare -a repos=(
	"rawdata-converter-core"
	"rawdata-converter-app-freg"
)

for repo in "${repos[@]}"
do
	git -C ${repo}/ pull --rebase
done

