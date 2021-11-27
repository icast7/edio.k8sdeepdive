kubectl get pods
kubectl describe pod tkb-sts-0
> Volumes:
>   webroot:
>     Type:       PersistentVolumeClaim (a reference to a PersistentVolumeClaim in the same namespace)
>     ClaimName:  webroot-tkb-sts-0
>     ReadOnly:   false

kubectl delete pod tkb-sts-0
kubectl get pods --watch
kubectl describe pod tkb-sts-0 | grep ClaimName
>     ClaimName:  webroot-tkb-sts-0

kubectl scale sts tkb-sts --replicas=0
kubectl get sts tkb-sts
> NAME      READY   AGE
> tkb-sts   0/0     31m

kubectl delete sts tkb-sts
