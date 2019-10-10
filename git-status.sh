#!/bin/sh

declare -a repos=(
	"rawdata-converter-core"
	"rawdata-converter-app-freg"
	"rawdata-converter-app-sirius"
)

echo "\nrawdata-converter-core"
echo "----------------------------------------------------------------"
git status --short

for repo in "${repos[@]}"
do
    echo "\n"${repo}
    echo "----------------------------------------------------------------"
	git -C ${repo} status --short
done

