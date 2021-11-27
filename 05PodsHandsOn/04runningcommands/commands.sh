kubectl exec hello-pod -- ps aux
>  PID   USER     TIME  COMMAND
>    1 root      0:00 node ./app.js
>   12 root      0:00 ps aux
kubectl exec -it hello-pod -- sh
>> apk add curl
>> curl localhost:8080

kubectl describe pods hello-pod
#Containers>hello-ctr

kubectl get pods
kubectl logs hello-pod
kubectl logs dnsutils

kubectl delete -f ../02manifest/pod.yml 