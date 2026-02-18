https://www.google.com/search?q=rsync+ssh+port

# Solution:
https://stackoverflow.com/questions/4549945/is-it-possible-to-specify-a-different-ssh-port-when-using-rsync
cmd:
`rsync -rvz -e 'ssh -p 2222' --progress ./dir user@host:/path`
