## Jenkins on Kubernetes Cluster
This project is the POC for the minimum setup of Jenkins on Kubernetes Cluster

## Installation
You can use GKE or another Cloud with Kubernetes Engine or use an on-premise Kubernetes cluster.

* Run over VMs

Use these scripts to install and config the master node and workers nodes https://github.com/danielitogomez/bash/tree/master/kubernetes
Notice that the VMs must have IP public and have exit to the internet.
Another way is to change the Jenkins services.yaml to NodePort and do a forwarding port to have private access to Jenkins.


* Run over GKE

Use this documentation to enable the GKE API and create the cluster.
https://cloud.google.com/kubernetes-engine/docs/how-to/creating-a-zonal-cluster
Then when you have access to do kubectl command into the cluster, run the init-config script.
