## Minikute 

You need Minikute to be able to run and test Kubernetes on your local enviroment

#### 1. What is Minikute
- Create Virtual Box on your laptop
- Node runs in that Virtual Box
- 1 Node K8s cluster
- For testing purposes

#### 2. Install minikube: [Link](https://kubernetes.io/vi/docs/tasks/tools/install-minikube/)

#### 3. Shell command: 
```shell 
    minikube start --driver=hyperv
```
```shell 
    minikube delete
```
#### 4. Kubectl

The command line tool for K8s cluster [Link](https://kubernetes.io/vi/docs/tasks/tools/install-kubectl/)

```shell 
    kubectl apply -f <config_file>
```

```shell 
    kubectl create namespace <namespace>
```

```shell 
    kubectl config set-context --current --namespace <namespace>
```

## Helm
Last piece to install is [Helm](https://helm.sh/docs/intro/). Download the latest tar file with the Windows binary from https://github.com/kubernetes/helm/releases and extract its contents. Copy helm.exe to the bin directory. Run helm init from the command line to install "tiller" in the Minikube cluster.

```shell 
    helm create mongodb
```

```shell 
    helm lint ./mongodb/
```

```shell 
    helm install mongodb ./mongodb/
```

