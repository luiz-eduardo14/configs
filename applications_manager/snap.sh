source ../utils/export_all_systems.sh

echo "Installing Snap..."

case $export_all_systems in
    *debian*)
        apt-get update
        ;;
esac

case $export_all_systems in
    *debian*)
        echo "Downloading snap from Debian and installing with apt..."
        systemctl enable --now snapd.socket
        apt-get install snapd
        ;;
    *arch*)
        echo "Downloading snap from Arch Linux and installing with pacman..."
        sudo systemctl enable --now snapd.socket
        sudo ln -s /var/lib/snapd/snap /snap
        sudo pacman -S snapd
        ;;
    *Mac*)
        echo "Downloading snap from Mac and installing with brew..."

        brew install snapcraft
        ;;
        *)
        echo "Exiting script, because your system is not supported."
        exit 1
esac