kubectl apply -f jump-pod.yml
kubectl exec -it jump-pod -- bash

root@jump-pod:/# dig SRV dullahan.default.svc.cluster.local
---
; <<>> DiG 9.16.1-Ubuntu <<>> SRV dullahan.default.svc.cluster.local
;; global options: +cmd
;; Got answer:
;; WARNING: .local is reserved for Multicast DNS
;; You are currently testing what happens when an mDNS query is leaked to DNS
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 4919
;; flags: qr aa rd; QUERY: 1, ANSWER: 3, AUTHORITY: 0, ADDITIONAL: 4
;; WARNING: recursion requested but not available

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 4096
; COOKIE: 8791cc702374043b (echoed)
;; QUESTION SECTION:
;dullahan.default.svc.cluster.local. IN	SRV

;; ANSWER SECTION:
dullahan.default.svc.cluster.local. 30 IN SRV	0 33 80 tkb-sts-0.dullahan.default.svc.cluster.local.
dullahan.default.svc.cluster.local. 30 IN SRV	0 33 80 tkb-sts-1.dullahan.default.svc.cluster.local.
dullahan.default.svc.cluster.local. 30 IN SRV	0 33 80 tkb-sts-2.dullahan.default.svc.cluster.local.

;; ADDITIONAL SECTION:
tkb-sts-2.dullahan.default.svc.cluster.local. 30 IN A 10.1.0.129
tkb-sts-1.dullahan.default.svc.cluster.local. 30 IN A 10.1.0.128
tkb-sts-0.dullahan.default.svc.cluster.local. 30 IN A 10.1.0.127

root@jump-pod:/# exit
---
