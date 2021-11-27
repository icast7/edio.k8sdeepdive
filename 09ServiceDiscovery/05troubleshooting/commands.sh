kubectl get deploy -n kube-system -l k8s-app=kube-dns
kubectl get pods -n kube-system -l k8s-app=kube-dns
---
kubectl logs coredns-558bd4d5db-r972c -n kube-system
kubectl logs coredns-558bd4d5db-rt9lk -n kube-system
---
kubectl get svc kube-dns -n kube-system
kubectl get ep -n kube-system -l k8s-app=kube-dns
---
kubectl run -it dnsutils \
  --image gcr.io/kubernetes-e2e-test-images/dnsutils:1.3
nslookup kubernetes
kubectl get svc kubernetes

kubectl delete pod -n kube-system  -l k8s-app=kube-dns
kubectl get pods -n kube-system -l k8s-app=kube-dns