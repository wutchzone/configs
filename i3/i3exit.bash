#!/bin/bash

set -euxo pipefail

case "$1" in
  lock)
    i3lock
    ;;
  logout)
    i3-msg exit
    ;;
  suspend)
    i3lock
    systemctl suspend
    ;;
  reboot)
    systemctl reboot
    ;;
  shutdown)
    systemctl poweroff
esac

exit 0
