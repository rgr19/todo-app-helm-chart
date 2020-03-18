#!/usr/bin/env bash

set -e

wget https://get.helm.sh/helm-v$HELM_VERSION-linux-amd64.tar.gz
tar xzvf helm-v$HELM_VERSION-linux-amd64.tar.gz
mv linux-amd64/helm helm
chmod u+x helm
mv helm /home/travis/bin/

wget https://github.com/garethr/kubeval/releases/download/0.10.0/kubeval-linux-amd64.tar.gz
tar xzvf kubeval-linux-amd64.tar.gz
chmod u+x kubeval
mv  kubeval /home/travis/bin/

ls -la /home/travis/bin
/home/travis/bin/helm version