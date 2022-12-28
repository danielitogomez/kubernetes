#!/bin/bash

NS_FILE="/tmp/ns-list.txt"
PODS_FILE="/tmp/pod-list.txt"

if [ -f "$PODS_FILE" ]; then
  rm -rf $PODS_FILE
fi

if [ -f "$NS_FILE" ]; then
  rm -rf $NS_FILE
fi

function get_ns() {
        kubectl get ns --no-headers | egrep -v '^(kube|local)' | awk '{print $1}'> $NS_FILE
}

function get_pods() {
    for ns in $(cat $NS_FILE); do
        kubectl get pods --no-headers -n $ns | awk '{print $1}' > $PODS_FILE
    done
}

function db_ops() {
    for pods in $(cat $PODS_FILE); do
        kubectl exec -it $pods -- mysql -u root -h localhost -p'password' -sN -e "SHOW databases;"
    done
}

get_ns

get_pods

db_ops