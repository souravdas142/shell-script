#!/bin/bash

# Custom Rofi Script

BORDER="#728cbb"
SEPARATOR="#141414"
FOREGROUND="#888888"
BACKGROUND="#141414"
BACKGROUND_ALT="#1f1f1f"
HIGHLIGHT_BACKGROUND="#282828"
HIGHLIGHT_FOREGROUND="#1e88e5"

BLACK="#000000"
WHITE="#ffffff"
RED="#e53935"
GREEN="#43a047"
YELLOW="#fdd835"
BLUE="#1e88e5"
MAGENTA="#00897b"
CYAN="#00acc1"
PINK="#d81b60"
PURPLE="#8e24aa"
INDIGO="#3949ab"
TEAL="#00897b"
LIME="#c0ca33"
AMBER="#ffb300"
ORANGE="#fb8c00"
BROWN="#6d4c41"
GREY="#757575"
BLUE_GREY="#546e7a"
DEEP_PURPLE="#5e35b1"
DEEP_ORANGE="#f4511e"
LIGHT_BLUE="#039be5"
LIGHT_GREEN="#7cb342"

# Launch Rofi
MENU="$(rofi -no-config -no-lazy-grab -sep "|" -dmenu -i -p 'System :' \
-hide-scrollbar true \
-bw 0 \
-lines 4 \
-line-padding 10 \
-padding 20 \
-width 15 \
-xoffset -10 -yoffset 38 \
-location 3 \
-columns 1 \
-show-icons -icon-theme "Papirus" \
-font "Noto Sans 9" \
-color-enabled true \
-color-window "$BACKGROUND,$BORDER,$SEPARATOR" \
-color-normal "$BACKGROUND_ALT,$FOREGROUND,$BACKGROUND_ALT,$HIGHLIGHT_BACKGROUND,$HIGHLIGHT_FOREGROUND" \
-color-active "$BACKGROUND,$MAGENTA,$BACKGROUND_ALT,$HIGHLIGHT_BACKGROUND,$HIGHLIGHT_FOREGROUND" \
-color-urgent "$BACKGROUND,$YELLOW,$BACKGROUND_ALT,$HIGHLIGHT_BACKGROUND,$HIGHLIGHT_FOREGROUND" \
<<< ">> Lock|>> Logout|>> Reboot|>> Shutdown")"
case "$MENU" in
  *Lock) i3lock-fancy ;;
  *Logout) openbox --exit;;
  *Reboot) systemctl reboot ;;
  *Shutdown) systemctl -i poweroff
esac

# More Options
# -fullscreen \

# Theming help
# color window = background, border, separator
# color normal = background, foreground, background-alt, highlight-background, highlight-foreground
# color active = background, foreground, background-alt, highlight-background, highlight-foreground
# color urgent = background, foreground, background-alt, highlight-background, highlight-foreground
