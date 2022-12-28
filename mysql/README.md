## PoC operation mysql pods

Sometimes you'll need to make changes in dev/local environment to see how it works, basically to fast test.
Here, there is an example of a Kubernetes local cluster using kind, deployment, and service MySQL manifest, and how we can show DB inside the pods using a bash script.

## Requeriments
1. To have kind or minikube installed.
2. To have in the context of kind or minikube.

## How to use?
```sh
git clone https://github.com/danielitogomez/kubernetes.git
cd $PWD/kubernetes/mysql
kubectl apply -f .
./db-dev-ops.sh
```
