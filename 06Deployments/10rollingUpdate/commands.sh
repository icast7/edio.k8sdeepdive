kubectl apply -f deploy.yml --record # record: maintains the command used to deploy in the revision history
kubectl rollout status deployment hello-deploy
kubectl get deploy
kubectl describe deploy
curl localhost:30001
> <html><head><title>ACG loves K8S</title><link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css"/></head><body><div class="container"><div class="jumbotron"><h1>The Kubernetes Book!!!</h1><p></p><p> <a class="btn btn-primary" href="https://acloud.guru/learn/kubernetes-deep-dive">What about a video course as well!</a></p><p></p></div></div></body></html>