## Jenkins on Kubernetes Cluster
This project is the POC for minimum setup of Jenkins on Kubernetes Cluster

## Installation
You can use GKE or another Cloud with Kubernetes Engine and use on premise kubernetes cluster.

* Run over VMs
```
Use this scripts for install and config the master node and workers nodes
- (https://github.com/danielitogomez/bash/tree/master/kubernetes)
Notice that the VMs must have IP public and out of internet or other way is change the jenkins services.yaml to NodePort and do a forwarding port for private access to Jenkins
```

* Run over GKE
```
Use this documentation for enable the GKE API and create the cluster
- (https://cloud.google.com/kubernetes-engine/docs/how-to/creating-a-zonal-cluster)
Then when you have access to do kubect command into the cluster, run the init-config script
```