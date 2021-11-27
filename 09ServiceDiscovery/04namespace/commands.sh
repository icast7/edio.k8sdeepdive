kubectl apply -f sd-example.yml
kubectl get all -n dev
kubectl exec -it jump -n dev -- bash
cat /etc/resolv.conf
apt-get update && apt-get install curl -y
curl ent:8080
> Hello form the DEV Namespace!
> Hostname: enterprise-584b544bb6-t78gh
curl ent.prod.svc.cluster.local:8080
> Hello form the PROD Namespace!
> Hostname: enterprise-8b6fdc8c4-9ln5z