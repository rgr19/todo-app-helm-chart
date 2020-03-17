#!/usr/bin/env bash

set -e

manifests=$(find manifests -name '*.yaml' | grep -v crd)

for y in $manifests; do
	if [[ "$y" != *"crd"* ]]; then
		echo "KUBEVAL $y -v master"
		kubeval $y -v master
		if [ $? -ne 0 ]; then
			exit $?
		fi
	fi
done
