kubectl apply -f headless-svc.yml
kubectl get svc
> NAME         TYPE        CLUSTER-IP   EXTERNAL-IP   PORT(S)   AGE
> dullahan     ClusterIP   None         <none>        80/TCP    46h
> kubernetes   ClusterIP   10.96.0.1    <none>        443/TCP   3d23h