kubectl rollout history deployment hello-deploy
> NAME                      DESIRED   CURRENT   READY   AGE
> hello-deploy-59866ff45    10        10        10      6m32s
> hello-deploy-65cbc9474c   0         0         0       18m
kubectl get rs
kubectl describe rs hello-deploy-65cbc9474c
kubectl describe rs hello-deploy-59866ff45 kubectl rollout undo deployment hello-deploy --to-revision=1
kubectl get deploy hello-deploy
> NAME           READY   UP-TO-DATE   AVAILABLE   AGE
> hello-deploy   11/10   4            9           33m
kubectl rollout status deployment hello-deploy
###
### Cleanup
###
kubectl delete -f ./10rollingUpdate/deploy.yml 
kubectl delete -f ./09accessApps/svc.yml