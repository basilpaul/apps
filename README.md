API

Prerequisites (Please make sure the following are installed to test on your laptop)
1. minikube: brew cask install minikube
2. virtualbox: https://www.virtualbox.org/wiki/Downloads
3. docker: https://docs.docker.com/install/
4. brew install kubectl

Steps to test
1. Make sure minikube is running (minikube start)
2. git clone https://github.com/basilpaul/apps.git
3. Change directory to your cloned repo
4. ./installscript.sh (run the install script)

POST
1. curl -X POST -H "Content-Type: application/json" -d '{"name":"richard", "dateOfBirth":"1999-02-12"}' "$(minikube ip):31317/hello/richard"

GET
1. curl $(minikube ip):31317/hello/richard