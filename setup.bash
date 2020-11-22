sudo dhclient eth0
echo "expoer LANG=en_US" >> ~/.bashrc
sudo apt update -y
sudo apt upgrade -y
sudo apt-get install network-manager -y
echo "
    wifis:
        wlan0:
            dhcp4: true
            dhcp6: true
            addresses: [192.168.0.100/24]
            gateway4: 192.168.0.0 #wifiルータのip
            nameservers:
                 addresses: [192.168.0.0]
                 search: []
            optional: true
            access-points:
               "wifi name":
                   password: hogehoge
            
" >> /etc/netplan/50-cloud-init.yaml
sudo vim /etc/netplan/50-cloud-init.yaml
