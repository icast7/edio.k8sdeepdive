kubectl create configmap testmap1 \
--from-literal shortname=msb.com \
--from-literal longname=magicsandbox.com

kubectl describe configmap testmap1
kubectl describe cm testmap1

--------

kubectl create cm testmap2 --from-file cmfile.txt
kubectl describe cm testmap2 #key if file name, value is file contents

--------
# There is no concept of state
kubectl get cm
kubectl get cm testmap1 -o wide
kubectl get cm testmap2 -o yaml
