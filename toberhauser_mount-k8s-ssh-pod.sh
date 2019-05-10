#!/usr/bin/env sh
podname=$(kubectl get pods -n toberhauser | grep ssh | awk '{print $1}')
kubectl port-forward $podname 4444:22
