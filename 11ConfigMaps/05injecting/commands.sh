#env vars
kubectl apply -f envpod.yml

# startup commands
# didn't work but checked logs printed name and last name
kubectl exec envpod -- env | grep NAME  
kubectl get pods
kubectl logs envpod -c args1
kubectl describe pod envpod

#kubectl apply -f cmpod.yml
kubectl exec cmvol -- ls /etc/name
