#!/bin/sh

declare -a repos=(
	"rawdata-converter-core"
	"rawdata-converter-app-freg",
	"rawdata-converter-app-sirius"
)

for repo in "${repos[@]}"
do
    echo git -C ${repo}/ pull --rebase
	git -C ${repo}/ pull --rebase
done

