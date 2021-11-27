kubectl apply -f ./local-sc.yml
kubectl get sc
> NAME                 PROVISIONER                    RECLAIMPOLICY   VOLUMEBINDINGMODE      ALLOWVOLUMEEXPANSION   AGE
> hostpath (default)   docker.io/hostpath             Delete          Immediate              false                  3d23h
> local-storage        kubernetes.io/no-provisioner   Delete          WaitForFirstConsumer   false                  11m