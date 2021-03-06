Rest API deployed on kubernetes


Prerequisites (Please make sure the following are installed to test on your laptop)
-------------
1. minikube: brew cask install minikube
2. virtualbox: https://www.virtualbox.org/wiki/Downloads
3. docker: https://docs.docker.com/install/
4. brew install kubectl

Steps to test
-------------
1. Make sure minikube is running (minikube start)
2. git clone https://github.com/basilpaul/apps.git
3. Change directory to your cloned repo
4. ./installscript.sh (run the install script)

POST
----
curl -X POST -H "Content-Type: application/json" -d '{"name":"richard", "dateOfBirth":"1999-02-12"}' "$(minikube ip):31317/hello/richard"

GET
---
curl $(minikube ip):31317/hello/richard

Deployments
-----------
Kubernetes performs rolling deployment of the application out of box. To deploy a new version:
1. Increment the image version and build the docker image:
2. docker build -t myrest:2.0 .
3. Update the rest-deployment.yaml with the new version of image
4. Apply the new image using (kubectl apply -f rest-deployment.yaml)

References
1. https://kubernetes.io/docs/tasks/debug-application-cluster/debug-service/#a-pod-cannot-reach-itself-via-service-ip
2. https://medium.com/@markgituma/kubernetes-local-to-production-with-django-3-postgres-with-migrations-on-minikube-31f2baa8926e