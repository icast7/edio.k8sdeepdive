kubectl apply -f gke-pv.yml
kubectl get pv pv1
> NAME   CAPACITY   ACCESS MODES   RECLAIM POLICY   STATUS      CLAIM   STORAGECLASS   REASON   AGE
> pv1    10Gi       RWO            Retain           Available           test                    8s
kubectl describe pv pv1
> Name:            pv1
> Labels:          env=book
> Annotations:     <none>
> Finalizers:      [kubernetes.io/pv-protection]
> StorageClass:    test
> Status:          Available
> Claim:           
> Reclaim Policy:  Retain
> Access Modes:    RWO
> VolumeMode:      Filesystem
> Capacity:        10Gi
> Node Affinity:   <none>
> Message:         
> Source:
>     Type:       GCEPersistentDisk (a Persistent Disk resource in Google Compute Engine)
>     PDName:     uber-disk
>     FSType:     
>     Partition:  0
>     ReadOnly:   false
> Events:         <none>