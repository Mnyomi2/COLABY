cat > install_chromeRM.sh <<'EOF'

#!/bin/bash
sudo apt-get -qq update >/dev/null 2>&1 && sudo apt-get -qq upgrade -y >/dev/null 2>&1

sudo apt-get install -y wget gdebi && sudo rm -rf /var/lib/apt/lists/*
echo 'export DEBIAN_FRONTEND=noninteractive' >> ~/.bashrc
source ~/.bashrc

export DEBIAN_FRONTEND=noninteractive
echo "keyboard-configuration keyboard-configuration/layout select 'USA'" | sudo debconf-set-selections
echo "keyboard-configuration keyboard-configuration/variant select 'USA'" | sudo debconf-set-selections


wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb -O chrome-remote-desktop_current_amd64.deb

sudo dpkg -i chrome-remote-desktop_current_amd64.deb && sudo apt-get -f install -y

rm chrome-remote-desktop_current_amd64.deb
sudo systemctl enable chrome-remote-desktop@$(whoami).service
sudo systemctl start chrome-remote-desktop@$(whoami).service

sudo apt-get autoremove --purge -y && sudo apt-get autoclean -y && sudo apt-get clean -y && dpkg -l | awk '/^rc/ {print $2}' | xargs -r sudo dpkg --purge && sudo journalctl --vacuum-size=100M && sudo rm -rf /var/lib/apt/lists/* /tmp/* ~/.cache/* ~/.thumbnails ~/.local/share/Trash/* ~/.cache/thumbnails/* 2>/dev/null || true && echo "✅ System cleaned successfully."

DISPLAY= /opt/google/chrome-remote-desktop/start-host --code="4/0AXEQxICSBGmNIXmUHXzzuIaQIDPzvTwMzvEc6golO4VNpR5OD2qgd2ayFaTizWslACtZ7g" --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name=$(hostname) --pin=000000

EOF

chmod +x install_chromeRM.sh
./install_chromeRM.sh
