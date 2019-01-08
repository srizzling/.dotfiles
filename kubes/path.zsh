#!/bin/bash

export KUBECONFIG=~/.kube/config-eks-istio-pg

# Kube toolssets
export ISTIO_BIN_PATH=~/.istio/istio-1.0.1/bin
export PATH="$PATH:$ISTIO_BIN_PATH"
