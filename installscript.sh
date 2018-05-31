#!/bin/bash

echo "Setting up postgres cluster.."
echo
eval $(minikube docker-env)
kubectl apply -f pvc.yaml
kubectl apply -f secrets.yaml
kubectl apply -f postgres-deployment.yaml
kubectl apply -f postgres-service.yaml
echo "Building docker image of app.."
echo
docker build -t myrest:1.0 .
kubectl apply -f rest-deployment.yaml
kubectl apply -f rest-service.yaml
echo "Migrating database, please wait.."
echo
sleep 5
kubectl apply -f db-migration.yaml
echo "App deployed to a single cluster and is ready for use.."
echo "Please perform a post using the url in the readme"