# --- Fix noVNC Audio ---
sudo apt update -qq 2>/dev/null && sudo apt upgrade -y -qq 2>/dev/null && sudo apt install -y -qq pipewire pipewire-pulse pulseaudio pavucontrol >/dev/null 2>&1 && pulseaudio --kill >/dev/null 2>&1; pipewire >/dev/null 2>&1 & pipewire-pulse >/dev/null 2>&1 & pulseaudio --start >/dev/null 2>&1 && pactl load-module module-native-protocol-tcp auth-anonymous=1 >/dev/null 2>&1 && echo "Audio backend OK (TCP 4713)"


# --- XFCE Desktop Panel and Theme Configuration Script ---
# xfconf-query -c xfce4-panel -p /panels/panel-1/position -s "p=0;x=0;y=0" && xfce4-panel -r
# xfconf-query -c xfce4-panel -p /plugins/plugin-1 -s applicationsmenu && xfce4-panel -r
# xfconf-query -c xsettings -p /Net/IconThemeName -s "Faenza"
# xfconf-query -c xsettings -p /Net/ThemeName -s "Adwaita-dark"

xfconf-query -c xfce4-panel -p /plugins/plugin-1 -s applicationsmenu
xfconf-query --channel xfce4-desktop -p /desktop-menu/show -t 'bool' -s true --create
xfconf-query --channel xfce4-desktop -p /windowlist-menu/show -t 'bool' -s true --create
xfconf-query --channel xfce4-desktop -p /windowlist-menu/show -t 'bool' -s false --create
xfconf-query --channel xfce4-notifyd -p /notify-location -t string -s bottom-right --create
xfconf-query --channel xfce4-panel -p /panels -a -t int -s 1 --create
xfconf-query --channel xfce4-panel -p /panels/panel-2 -r -R
xfconf-query --channel xfce4-panel -p /panels/dark-mode -s true
xfconf-query --channel xfce4-panel -p /panels/panel-1/plugin-ids -a -t int -s 1 -t int -s 4 -t int -s 5 -t int -s 7 -t int -s 15 -t int -s 2 -t int -s 3 -t int -s 6 -t int -s 8 -t int -s 9 -t int -s 10 -t int -s 11 -t int -s 12 -t int -s 13 -t int -s 14 --create
xfconf-query --channel xfce4-panel -p /panels/panel-1/position -t string -s 'p=8;x=960;y=1055'
xfconf-query --channel xfce4-panel -p /panels/panel-1/position-locked -s true
xfconf-query --channel xfce4-panel -p /panels/panel-1/size -t int -s 26
xfconf-query --channel xfce4-panel -p /plugins -r -R
xfconf-query --channel xfce4-panel -p /plugins/plugin-1 -t string -s 'applicationsmenu' --create
xfconf-query --channel xfce4-panel -p /plugins/plugin-10 -t string -s 'notification-plugin' --create
xfconf-query --channel xfce4-panel -p /plugins/plugin-11 -t string -s 'separator' --create
xfconf-query --channel xfce4-panel -p /plugins/plugin-11/style -t int -s 0 --create
xfconf-query --channel xfce4-panel -p /plugins/plugin-12 -t string -s 'clock' --create
xfconf-query --channel xfce4-panel -p /plugins/plugin-12/digital-date-font -t string -s 'Noto Sans 8' --create
xfconf-query --channel xfce4-panel -p /plugins/plugin-12/digital-time-font -t string -s 'Noto Sans 8' --create
xfconf-query --channel xfce4-panel -p /plugins/plugin-13 -t string -s 'separator' --create
xfconf-query --channel xfce4-panel -p /plugins/plugin-13/style -t int -s 0 --create
xfconf-query --channel xfce4-panel -p /plugins/plugin-14 -t string -s 'actions' --create
xfconf-query --channel xfce4-panel -p /plugins/plugin-15 -t string -s 'launcher' --create
xfconf-query --channel xfce4-panel -p /plugins/plugin-15/items -a -t string -s 'firefox.desktop' --create
xfconf-query --channel xfce4-panel -p /plugins/plugin-1/button-title -t string -s 'Start' --create
xfconf-query --channel xfce4-panel -p /plugins/plugin-2 -t string -s 'tasklist' --create
xfconf-query --channel xfce4-panel -p /plugins/plugin-2/grouping -t 'bool' -s false --create
xfconf-query --channel xfce4-panel -p /plugins/plugin-2/sort-order -t int -s 4 --create
xfconf-query --channel xfce4-panel -p /plugins/plugin-3 -t string -s 'separator' --create
xfconf-query --channel xfce4-panel -p /plugins/plugin-3/expand -t 'bool' -s true --create
xfconf-query --channel xfce4-panel -p /plugins/plugin-3/style -t int -s 0 --create
xfconf-query --channel xfce4-panel -p /plugins/plugin-4 -t string -s 'showdesktop' --create
xfconf-query --channel xfce4-panel -p /plugins/plugin-5 -t string -s 'launcher' --create
xfconf-query --channel xfce4-panel -p /plugins/plugin-5/items -a -t string -s 'xfce4-file-manager.desktop' --create
xfconf-query --channel xfce4-panel -p /plugins/plugin-6 -t string -s 'systray' --create
xfconf-query --channel xfce4-panel -p /plugins/plugin-6/square-icons -t 'bool' -s true --create
xfconf-query --channel xfce4-panel -p /plugins/plugin-7 -t string -s 'launcher' --create
xfconf-query --channel xfce4-panel -p /plugins/plugin-7/items -a -t string -s 'xfce4-terminal.desktop' --create
xfconf-query --channel xfce4-panel -p /plugins/plugin-8 -t string -s 'pulseaudio' --create
xfconf-query --channel xfce4-panel -p /plugins/plugin-8/enable-keyboard-shortcuts -t 'bool' -s true --create
xfconf-query --channel xfce4-panel -p /plugins/plugin-8/show-notifications -t 'bool' -s true --create
# xfconf-query --channel xfce4-panel -p /plugins/plugin-9 -t string -s 'power-manager-plugin' --create
xfconf-query --channel xfce4-session -p /general/SaveOnExit -t 'bool' -s false --create
xfconf-query --channel xfce4-terminal -p /background-darkness -t double -s 0.700000 --create
xfconf-query --channel xfce4-terminal -p /background-mode -t string -s TERMINAL_BACKGROUND_TRANSPARENT --create
xfconf-query --channel xfce4-terminal -p /font-use-system -t 'bool' -s true --create
xfconf-query --channel xfwm4 -p /general/workspace_count -t int -s 1
xfconf-query --channel xfwm4 -p /general/title_font -t string -s 'Noto Sans Bold 9'
xfconf-query --channel xsettings -p /Gtk/FontName -t string -s 'Noto Sans 9'
xfconf-query --channel xsettings -p /Gtk/MonospaceFontName -t string -s 'Noto Sans Mono 9'
# xfconf-query -c xsettings -p /Net/IconThemeName -s "Faenza"
# xfconf-query --channel xsettings -p /Net/IconThemeName -t string -s 'elementary'
# xfconf-query --channel xsettings -p /Net/IconThemeName -t string -s 'breeze'
xfconf-query -c xsettings -p /Net/IconThemeName -s "ePapirus-Dark"
xfconf-query -c xsettings -p /Net/ThemeName -s "Adwaita-dark"
xfconf-query --channel xsettings -p /Xft/Antialias -t int -s 1
xfconf-query --channel xsettings -p /Xft/DPI -t int -s -1 --create
xfconf-query --channel xsettings -p /Xft/Hinting -t int -s -1
xfconf-query --channel xsettings -p /Xft/HintStyle -t string -s 'hintfull'
xfconf-query --channel xsettings -p /Xft/RGBA -t string -s 'rgb'
xfconf-query -c xfce4-panel -p /panels/panel-1/position -s "p=0;x=0;y=0"
xfconf-query -c xfce4-panel -p /panels/panel-1/position-locked -n -t bool -s true
xfconf-query -c xfce4-panel -p /panels/panel-1/length -n -t int -s 100
xfconf-query -c xfce4-panel -p /panels/panel-1/position -n -t string -s "p=6;x=0;y=0"
xfce4-panel -r



# --- Download and set wallpaper ---
mkdir -p ~/Pictures/wallpapers
wget -O ~/Pictures/wallpapers/faenza-wallpaper.jpg https://wallpaperaccess.com/full/871453.jpg
xfconf-query -c xfce4-desktop -l | grep last-image | while read line; do
    xfconf-query -c xfce4-desktop -p "$line" -s "$HOME/Pictures/wallpapers/faenza-wallpaper.jpg"
done
# Reload desktop
xfdesktop --reload 2>/dev/null || (pkill xfdesktop && xfdesktop &)


# xfconf-query -c xfce4-panel -p /panels/panel-1/position -s 2 && xfce4-panel -r
sudo apt remove --purge xfce4-screensaver

# ---  /home/baynar/Allinone  →  /content/Allinone  ---
# sudo mkdir -p /content/Allinone && sudo chmod 777 /content/Allinone && ln -sfn /content/Allinone "$(eval echo ~${SUDO_USER:-$USER})/Allinone"
sudo mkdir -p /content/Allinone && sudo chmod 777 /content/Allinone && sudo ln -sfn /content/Allinone "$HOME/Allinone"

# --- Download and install Firefox 149.0.2 ---
# wget -O ~/Downloads/firefox-149.0.2.deb "https://download-installer.cdn.mozilla.net/pub/firefox/releases/149.0.2/linux-x86_64/en-US/firefox-149.0.2.deb" && sudo dpkg -i ~/Downloads/firefox-149.0.2.deb && sudo apt-get install -f -y && rm ~/Downloads/firefox-149.0.2.deb
