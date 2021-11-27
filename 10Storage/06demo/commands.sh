# cleanup
kubectl delete pods volpod
kubectl delete pvc pvc1
kubectl delete pv pv1

kubectl apply -f local-docker-sc.yml 
kubectl get sc slow
> NAME             PROVISIONER          RECLAIMPOLICY   VOLUMEBINDINGMODE   ALLOWVOLUMEEXPANSION   AGE
> slow (default)   docker.io/hostpath   Retain          Immediate           false                  31s

kubectl apply -f local-pvc.yml 
kubectl get pvc pv-ticket
> NAME        STATUS   VOLUME                                     CAPACITY   ACCESS MODES   STORAGECLASS   AGE
> pv-ticket   Bound    pvc-7c5b3409-0ec7-4144-a1f4-2d9d14ff6157   25Mi       RWO            slow           68s


kubectl get pv
> NAME                                       CAPACITY   ACCESS MODES   RECLAIM POLICY   STATUS   CLAIM                       STORAGECLASS           REASON   AGE
> pvc-7c5b3409-0ec7-4144-a1f4-2d9d14ff6157   25Mi       RWO            Retain           Bound    default/pv-ticket           slow                            116s

kubectl apply -f google-pod.yml
kubectl describe pod class-pod
> Volumes:
>   data:
>     Type:       PersistentVolumeClaim (a reference to a PersistentVolumeClaim in the same namespace)
>     ClaimName:  pv-ticket
>     ReadOnly:   false

kubectl delete pod class-pod
kubectl delete pvc pv-ticket
kubectl delete sc slow