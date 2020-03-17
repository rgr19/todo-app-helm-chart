#!/usr/bin/env bash

manifests=$(find manifests -name '*.yaml' | grep -v crd )

for y in $manifests; do
	if [[ "$y" != *"crd"* ]]; then
		kubeval $y -v $KUBECTL_VERSION
	fi
done
