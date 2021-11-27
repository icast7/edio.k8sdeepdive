cat /etc/resolv.conf 
> nameserver 10.96.0.10
> search dev.svc.cluster.local svc.cluster.local cluster.local
> options ndots:5
kubectl get svc -n kube-system -l k8s-app=kube-dns