# homelab

## TODO

- [ ] run kind on 192.168.10.0/8
- [ ] use dns

## requirements

* macos
* (podman)[https://podman.io/docs/installation]
* (kind)[https://kind.sigs.k8s.io/docs/user/quick-start/#installing-with-a-package-manager]
* <?locabalancer>

## [?] cloud-provider-kind

```
go install sigs.k8s.io/cloud-provider-kind@latest
kubectl label node homelab-control-plane node.kubernetes.io/exclude-from-external-load-balancers-
```

## [~] DNS

https://mya.sh/blog/2020/10/21/local-ingress-domains-kind/
