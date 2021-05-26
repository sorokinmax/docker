sudo dnf update -y
sudo dnf install -y yum-utils device-mapper-persistent-data lvm2 curl
sudo dnf-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo dnf makecache

sudo dnf install -y docker-ce --allowerasing
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
sudo systemctl enable --now docker

# find lastest release here: https://github.com/docker/compose/releases
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

firewall-cmd --zone=public --add-masquerade --permanent
firewall-cmd --reload
