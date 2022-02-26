#!/bin/sh
# Uninstalls softhsm
## Usage: ./delete_kernel.sh [kubeconfig]

if [ $# -ge 1 ] ; then
  export KUBECONFIG=$1
fi

NS=softhsm-kernel
while true; do
    read -p "Are you sure you want to delete Softhsm Kernel helm charts? Y/n ?" yn
    if [ $yn = "Y" ]
      then
        kubectl delete ns $NS
        break
      else
        break
    fi
done
