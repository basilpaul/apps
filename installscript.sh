#!/bin/bash

eval $(minikube docker-env)
kubectl apply -f pvc.yaml
kubectl apply -f secrets.yaml
kubectl apply -f postgres-deployment.yaml
kubectl apply -f postgres-service.yaml
docker build -t myrest:1.0 .
kubectl apply -f rest-deployment.yaml
kubectl apply -f rest-service.yaml
kubectl apply -f db-migration.yaml
