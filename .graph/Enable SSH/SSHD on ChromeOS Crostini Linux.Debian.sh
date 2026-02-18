# Source. https://web.archive.org/web/20210513172249/https://www.hackershark.com/2021/05/13/how-to-ssh-into-your-chromebook-through-linux-beta/
sudo rm /etc/ssh/sshd_not_to_be_run
sudo sed -i ´s/# Port/Port 1025/´ /etc/ssh/sshd_config

sudo systemctl enable ssh
sudo systemctl start ssh

sudo systemctl status ssh

# 5. Set a Root and User Password
sudo su
passwd root
