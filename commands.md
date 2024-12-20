# updte the env
sudo apt update 

# install docker 
sudo apt install docker.io
sudo usermod -aG docker $USER $$ newgrp docker 
docker ps 

# create a 3 node kubernetes cluster using kind
kind create cluster --config=config.yml 


# commnads to install ARGOCD 
"""
# create namespace

kubectl create namespace argocd

# applyArgo cd manifest
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

# check services in Argo CD namespace:

kubectl get svc -n argocd

# expose ArgoCD server using nodePort;

kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "NodePort"}}'

# forword ports to access argo CD server :

kubectl port-forward -n argocd service/argocd-server 8443:443 &
