#!/usr/bin/env bash

for y in manifests/*.yaml; do
	if [[ "$y" != *"crd"* ]]; then
		kubeval $y -v $KUBECTL_VERSION
	fi
done
