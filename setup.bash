echo "expoer LANG=en_US" >> ~/.bashrc
sudo apt update -y
sudo apt upgrade -y
sudo apt-get install network-manager -y
sudo vim /etc/netplan/50-cloud-init.yaml
