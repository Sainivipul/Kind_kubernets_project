# setp Ec2 inctance and update after connection 

sudo apt update 

#install docker 

sudo apt install docker.io
sudo usermod -aG docker $USER $$ newgrp docker 
docker ps 

# setup kubernetes cluster
#create folder 
mkdir k8s-install 

#create a install file 

vim install_kind.sh

# Paste below scipt 
"""

#!/bin/bash

# For AMD64 / x86_64

[ $(uname -m) = x86_64 ] && curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.20.0/kind-linux-amd64
chmod +x ./kind
sudo cp ./kind /usr/local/bin/kind
rm -rf kind

"""
# make file exicutable
chmod +x install_kind.sh

#exicute to install 

./install_kind.sh

#check 
kind --version

# now we have to setup one contaol plain and two worker node 
copy kind config file 
paste in config.yml file

vim config.yml 

# create architecture 

kind create cluster --config=config.yml --name=my-cluster

#after perparing clustr to communicate with cluster we need to install kube ctl 

vim install_kubectl.sh
#copy script fromm kind_cluster folder and exicute 
#check kubectl install
kubectl get nods 

#now lets setup argoCD on this cluster 
#first we need to setup a namespace 
kubectl get namespace








