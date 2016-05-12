#!/usr/bin/env sh

kubectl create secret generic tls-certs --from-file=tls
kubectl create configmap nginx-frontend-conf --from-file=nginx/frontend.conf
kubectl create -f deployments/hello.yaml
kubectl create -f services/hello.yaml
kubectl create -f deployments/auth.yaml
kubectl create -f services/auth.yaml
kubectl create -f deployments/frontend.yaml
kubectl create -f services/frontend.yaml
kubectl create -f deployments/load.yaml
