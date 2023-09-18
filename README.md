# UTILS #

This Docker image contains several frequently used binaries for administration of containers/pods on Swarm and Kuberentes. The base image is the official Ubuntu 22.04 LTS Jammy Jellyfish.

### Included Binaries: ###

* curl
* wget
* net-tools
* iputils-ping 
* dnsutils 
* nmap
* envsubst
* yq
* git

### Use Cases ###

```
kubectl run --rm utils --stdin --tty --image=ochero/utils -- bash
kubectl -n namespace run --rm utils --stdin --tty --image=ochero/utils -- ping clusterip-svc

```
