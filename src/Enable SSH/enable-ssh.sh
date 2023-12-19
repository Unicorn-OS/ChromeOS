port=1066

# Set Port
sudo sed -i "s/#Port 22/Port $port/g" /etc/ssh/sshd_config

# install
sudo apt -y install openssh-server

# enable ssh.services
sudo systemctl enable ssh.service

sudo systemctl restart ssh.service
