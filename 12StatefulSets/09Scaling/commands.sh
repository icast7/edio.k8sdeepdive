kubectl apply -f local-sts-dowsized.yml
kubectl get sts tkb-sts
> NAME      READY   AGE
> tkb-sts   2/2     14m
kubectl get pvc
kubectl describe pvc webroot-tkb-sts-2 | grep Used
> Used By:  <none>


kubectl apply -f ../07DeployingStatefulSet/local-sts.yml 
kubectl get sts tkb-sts                            
> NAME      READY   AGE
> tkb-sts   3/3     16m
kubectl describe pvc webroot-tkb-sts-2 | grep Used
> Used By:  tkb-sts-2

kubectl explain sts.spec.updateStrategy.