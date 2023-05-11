#!/bin/bash
#wget -O - https://raw.githubusercontent.com/<username>/<project>/<branch>/<path>/<file> | sudo bash

sudo su
sudo apt update
sudo apt upgrade -y
curl https://releases.rancher.com/install-docker/20.10.sh | sh
docker --version
sudo systemctl enable docker
sudo systemctl start docker

sudo cat > /etc/docker/daemon.json <<EOF
{
  "exec-opts": ["native.cgroupdriver=systemd"],
  "log-driver": "json-file",
  "log-opts": {
    "max-size": "100m"
  },
  "storage-driver": "overlay2"
}
EOF
docker info | grep 'Cgroup Driver'

#RPi only - uncomment where required.
#sudo sed -i '$ s/$/ cgroup_enable=cpuset cgroup_enable=memory cgroup_memory=1 swapaccount=1/' /boot/firmware/cmdline.txt

sudo systemctl daemon-reload
sudo systemctl restart docker
sudo sysctl --system

URL="$(hostname -i)"

curl -sfL https://get.k3s.io | sh -s - --docker --bind-address $URL
sudo kubectl cluster-info
sudo kubectl get nodes -o wide
sudo k3s kubectl get pods --all-namespaces
sudo docker ps

TOKEN="$(sudo cat /var/lib/rancher/k3s/server/node-token)"

echo "curl -sfL https://get.k3s.io | K3S_URL=https://$URL:6443 K3S_TOKEN='$TOKEN' sh -s - --docker