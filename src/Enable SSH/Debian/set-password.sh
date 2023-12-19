# https://stackoverflow.com/questions/714915/using-the-passwd-command-from-within-a-shell-script

user=$USER
pass=u
echo "$user:$pass" | sudo chpasswd
