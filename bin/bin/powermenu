#! /bin/sh

rofi_cmd() {
	rofi -dmenu \
		-theme ~/.config/rofi/powermenu.rasi
}

chosen=$(printf "⏻ POWEROFF\n󰜉 REBOOT\n󰗼 EXIT" | rofi_cmd)

case "$chosen" in

# Для systemd
	"⏻ POWEROFF") poweroff ;;
	"󰜉 REBOOT") reboot ;;
	"󰗼 EXIT") exec i3-msg exit ;;

# Для runit
#	"⏻ poweroff") sudo shutdown -h now ;;
#	"󰜉 reboot") sudo shutdown -r now ;;
#	"󰗼 exit") exec i3-msg exit ;;
#	*) exit 1 ;;

esac
