# UTILS #

This Docker image contains several frequently used binaries for administration of containers/pods on Swarm and Kuberentes. \
The base image is the official Ubuntu 21.04 LTS Hirsute Hippo.

### Included Binaries: ###

* curl
* wget
* net-tools
* iputils-ping 
* dnsutils 
* nmap
* yq

### Use Cases ###

```
kubectl run --rm utils --stdin --tty --image=ochero/utils -- bash
kubectl -n namespace run --rm utils --stdin --tty --image=ochero/utils -- ping clusterip-svc

```
