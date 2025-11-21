## Install Docker


sudo wget https://raw.githubusercontent.com/lerndevops/labs/master/scripts/installDocker.sh -P /tmp
sudo chmod 755 /tmp/installDocker.sh
sudo bash /tmp/installDocker.sh
sudo systemctl restart docker.service


## Install CRI-Docker

VER="0.3.21"                               # or the version you want
ARCH=$(dpkg --print-architecture)          # amd64 or arm64


wget "https://github.com/Mirantis/cri-dockerd/releases/download/v${VER}/cri-dockerd-${VER}.${ARCH}.tgz"
tar -xzvf "cri-dockerd-${VER}.${ARCH}.tgz"
sudo mv cri-dockerd/cri-dockerd /usr/bin/
sudo chmod 755 /usr/bin/cri-dockerd

sudo systemctl daemon-reload
sudo systemctl restart cri-docker.service
sudo systemctl status cri-docker.service --no-pager -l



## Install kuubernetes

## Install kubeadm,kubelet,kubectl
sudo wget https://raw.githubusercontent.com/lerndevops/labs/master/scripts/installK8S.sh -P /tmp
sudo chmod 755 /tmp/installK8S.sh
sudo bash /tmp/installK8S.sh

