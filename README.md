# k8s-ignition
 
https://docs.fedoraproject.org/en-US/fedora-coreos/bare-metal/
https://dev.to/carminezacc/creating-a-kubernetes-cluster-with-fedora-coreos-36-j17

## remove control plane taint

```bash
kubectl taint nodes --all node-role.kubernetes.io/control-plane:NoSchedule- 
```

## install calico
https://docs.tigera.io/calico/3.25/getting-started/kubernetes/self-managed-onprem/onpremises

```bash
curl https://raw.githubusercontent.com/projectcalico/calico/v3.25.0/manifests/calico.yaml -O
kubectl apply -f calico.yaml
```
