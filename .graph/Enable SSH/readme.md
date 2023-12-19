sch: https://www.google.com/search?q=chromebook+linux+ssh+server

# Discuss:
https://superuser.com/questions/1513228/how-can-i-ssh-into-chrome-os

# Solution:
https://www.hackershark.com/2021/05/13/how-to-ssh-into-your-chromebook-through-linux-beta/

>Overview
>1. Remove the file at /etc/ssh/sshd_not_meant_to_be_run
>2. Set the SSH Port in SSH config file to a custom port above 1024
>3. Restart the SSH server for the new changes to take place
>4. Foward the Custom port in Chromebook settings
>5. SSH into your Chromebook
