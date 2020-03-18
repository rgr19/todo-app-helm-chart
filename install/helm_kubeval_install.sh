#!/usr/bin/env bash

wget https://get.helm.sh/helm-v$HELM_VERSION-linux-amd64.tar.gz
tar xzvf helm-v$HELM_VERSION-linux-amd64.tar.gz
mv linux-amd64/helm helm
chmod u+x helm

wget https://github.com/garethr/kubeval/releases/download/0.10.0/kubeval-linux-amd64.tar.gz
tar xzvf kubeval-linux-amd64.tar.gz
chmod u+x kubeval

mv helm kubeval /home/travis/bin/
/home/travis/bin/helm version