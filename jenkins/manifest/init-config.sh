#!/bin/bash

#Variables
NAMESPACE="jenkins"

#Creating namespace
kubectl create namespace $NAMESPACE

if [ $? -eq 0 ]; then

    for i in $(ls *yaml); do 
        kubectl create -f $i -n $NAMESPACE
    done

else
    echo "Already exist namespace $NAMESPACE"
    exit 1
fi