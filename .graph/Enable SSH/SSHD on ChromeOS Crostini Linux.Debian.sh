sudo rm /etc/ssh/sshd_not_to_be_run
sudo sed -i ´s/# Port/Port 1025/´ /etc/ssh/sshd_config
