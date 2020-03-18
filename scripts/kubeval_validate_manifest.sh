#!/usr/bin/env bash

set -e

manifests=$(find manifests -name '*.yaml' | grep -v crd)

for y in $manifests; do
	# we skip on custom resource descriptions
	# that kubeval can not handle
	if [[ "$y" != *"crd"* ]]; then
		echo "KUBEVAL -v master $y "
		kubeval -v master $y
		if [ $? -ne 0 ]; then
			exit $?
		fi
	fi
done
