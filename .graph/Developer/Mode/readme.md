**Best guide**: https://github.com/hexdump0815/linux-mainline-on-arm-chromebooks/blob/main/readme.md#enabling-developer-mode

section:
'''
## enabling developer mode

in order to boot anything else than chromeos on a chromebook one needs to enable the developer mode for it. a few things related to enabling the developer mode are important to know: first - in the process all data saved locally on the chromebook will be deleted, so important data should be backed up first - and second - in developer mode some of the advanced security features of chromeos are not enabled anymore. some more information about the developer mode and how to enable it on different devices can be found here: https://chromium.googlesource.com/chromiumos/docs/+/master/developer_mode.md

on a normal chromebook with a built in keyboard the following procedure will initiate the switch to developer mode (see: https://chromium.googlesource.com/chromiumos/docs/+/master/debug_buttons.md#firmware-keyboard-interface):

- esc + refresh (the round circle button) and press power button
- ctrl d
- enter (to accept)
- it will take around 10 minutes to do the switch

for more tablet style chromebooks without a fixed keyboard (like the lenovo duet for instance) the following procedure will initiate the switch to developer mode (see: https://chromium.googlesource.com/chromiumos/docs/+/master/debug_buttons.md#firmware-menu-interface):

- press the volume - and volume + buttons at the same time and then press the power button to turn on the device
- a prompt saying something like "please insert a recovery usb disk" will appear
- press the volume + button, now a menu should appear with options like "show debug info", "cancel", "power off", and "language"
- press the volume - and volume + buttons at the same time again, now the option "show debug info" should change to "confirm disabling os verification"
- select this option using the volume buttons and confirm it via the power button
- it will take around 10 minutes to do the switch

afterwards preparing everything for booting from sd card or usb looks like this by going to the command prompt (see: https://chromium.googlesource.com/chromiumos/docs/+/master/developer_mode.md#shell):

- ctl alt ->
- login as user chronos (no password required)
- sudo su (to become root)
- crossystem dev_boot_usb=1 dev_boot_signed_only=0
- reboot
- ctrl u (to boot from sd card at the first initial screen after reboot)

now the chromebook should be able to boot one of the bootable images provided here for the corresponding device type and wirtten properly to an sd card or usb disk. for writing disk images to such a medium there is plenty of information available on the web about how to do it on the different operating systems.

## setting gbb flags, enabling ccd and the magic suzyqable

it is possible to set parameters like the above to enable booting from usb also as default in the chromebook firmware via the so called gbb flags. this is definitely recommended as soon as one wants to install a regular linux onto the internal emmc storage of a chromebook (and wiping the chromeos on it). the reason for this is that at least some chromebooks tend to drain the battery if not used for a longer time and settings like the above for allowing usb booting and the enabled developer mode get lost if the battery gets completely empty in such cases. so one might end up in a situation where booting from usb/sd card is no longer possible as the corresponding flags were reset to their default to not allow booting from those devices. as there is no chromeos anymore on the emmc it is not possible to change the flags to enable booting from usb/sd again and the only way out is to restore cromeos via restore image onto the internal emmc storage wiping the regular linux installation there (and loosing all of its data) which is not really what one wants. due to this it is in the end highly recommended to set those flags to default to allow usb/sd booting and enabled developer mode, so that it will still work even if the battery gets completely drained. in case one gets into the above described situation that the usb booting flags get lost due to battery drain there might be some last option to get access to the installed linux on emmc back without having to restore chromeos to it by using a special hand crafted restore image as described here: https://www.chromium.org/chromium-os/developer-information-for-chrome-os-devices/workaround-for-battery-discharge-in-dev-mode/ - i'm not sure if this procedure is still working for the latest chromeos and firmware versions, but it might be worth a try at least in such cases.
'''
