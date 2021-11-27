kubectl apply -f deploy.yml
kubectl expose deployment web-deploy \
  --name=hello-svc \
  --target-port=8080 \
  --type=NodePort
kubectl describe svc hello-svc
> Name:                     hello-svc
> Namespace:                default
> Labels:                   <none>
> Annotations:              <none>
> Selector:                 app=hello-world
> Type:                     NodePort
> IP Family Policy:         SingleStack
> IP Families:              IPv4
> IP:                       10.108.100.242
> IPs:                      10.108.100.242
> LoadBalancer Ingress:     localhost
> Port:                     <unset>  8080/TCP
> TargetPort:               8080/TCP
> NodePort:                 <unset>  31865/TCP
> Endpoints:                10.1.0.86:8080,10.1.0.87:8080,10.1.0.88:8080 + 7 more...
> Session Affinity:         None
> External Traffic Policy:  Cluster
> Events:                   <none>

curl {IP}:31865

kubectl delete svc hello-svc