# Architecture overview:
https://chromeos.dev/en/linux/linux-on-chromeos-deep-dive

# Hypervisor:
## CrosVM
https://chromium.googlesource.com/chromiumos/platform/crosvm/

## cros-container-guest-tools
https://chromium.googlesource.com/chromiumos/containers/cros-container-guest-tools/
https://chromeos.dev/en/linux/linux-on-chromeos-faq#im-running-insert-distro-here-how-do-i-get-gui-apps-launcher-icons-etc

# Sommelier - Nested Wayland compositor
https://chromium.googlesource.com/chromiumos/platform2/+/HEAD/vm_tools/sommelier/README.md
- https://chromeos.dev/en/linux/linux-on-chromeos-faq#im-running-insert-distro-here-how-do-i-get-gui-apps-launcher-icons-etc

## garcon
- https://chromium.googlesource.com/chromiumos/platform2/+/master/vm_tools/garcon/

# Shell:
## vsh - Vsock SHell
https://chromium.googlesource.com/chromiumos/platform2/+/master/vm_tools/vsh/

# container image:
## Termina
"termina" Seems to be the name of the vm and the LXC container image running inside it!

home: https://chromium.googlesource.com/chromiumos/overlays/board-overlays/+/master/project-termina/
- faq: https://chromeos.dev/en/linux/linux-on-chromeos-faq#why-run-containers-inside-the-vm-why-not-run-programs-directly-in-the-vm
- wiki: https://wiki.archlinux.org/title/Chrome_OS_devices/Crostini#Create_the_container

quote:
>Note: The default Linux on ChromeOS vm⁠ is named termina.
>—https://chromeos.dev/en/linux/linux-on-chromeos-faq#can-i-delete-vms-i-no-longer-want
