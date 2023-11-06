source ../applications_manager/snap.sh

echo "Installing Snap packages..."


## Install VSCode

snap install code --classic

## Install Toolbox

curl https://download.jetbrains.com/toolbox/jetbrains-toolbox-2.0.5.17700.tar.gz --output ~/Downloads/jetbrains-toolbox.tar.gz

curl https://www.iconarchive.com/download/i105820/papirus-team/papirus-apps/jetbrains-toolbox.512.png --output ~/Downloads/jetbrains-toolbox.png

sudo tar -xvzf ~/Downloads/jetbrains-toolbox.tar.gz -C ~/Downloads

sudo mv ~/Downloads/jetbrains-toolbox-*/jetbrains-toolbox ~/Downloads/jetbrains-toolbox

sudo mv ~/Downloads/jetbrains-toolbox-icon.png /opt/jetbrains/

sudo mv ~/Downloads/jetbrains-toolbox /opt/jetbrains/

echo "[Desktop Entry]
Type=Application
Name=Jetbrains Toolbox
Comment=Jetbrains Toolbox
Exec=/opt/jetbrains/jetbrains-toolbox
Icon=/opt/jetbrains/jetbrains-toolbox-icon.png
" > /usr/share/applications/jetbrains-toolbox.desktop

sudo chmod +x /usr/share/applications/jetbrains-toolbox.desktop