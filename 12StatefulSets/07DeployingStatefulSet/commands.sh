kubectl apply -f local-sts.yml
kubectl get sts --watch
> statefulset.apps/tkb-sts created
> NAME      READY   AGE
> tkb-sts   0/3     0s
> tkb-sts   1/3     4s
> tkb-sts   2/3     8s
> tkb-sts   3/3     11s
kubectl get pvc
> NAME                STATUS   VOLUME                                     CAPACITY   ACCESS MODES   STORAGECLASS           AGE
> webroot-tkb-sts-0   Bound    pvc-760ed9ee-eb56-4770-9d1d-b700bad72a13   10Mi       RWO            local-docker-storage   102s
> webroot-tkb-sts-1   Bound    pvc-9c97e73e-dc41-405f-8cc3-3c5396a2e619   10Mi       RWO            local-docker-storage   98s
> webroot-tkb-sts-2   Bound    pvc-61b653ed-83fd-4760-a21f-d248459d2300   10Mi       RWO            local-docker-storage   95s
