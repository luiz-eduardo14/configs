if [ "$machine" == "Mac" ]; then
    export_all_systems="Mac"
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    # env for get all systems for current linux
    export_all_systems=$(ls -d /etc/[A-Za-z]*[_-][rv]e[lr]* | grep -v "lsb" | cut -d'/' -f3 | cut -d'-' -f1 | cut -d'_' -f1| cut -d' ' -f1);
fi

# env for get all systems for current linux

export_all_systems=$(ls -d /etc/[A-Za-z]*[_-][rv]e[lr]* | grep -v "lsb" | cut -d'/' -f3 | cut -d'-' -f1 | cut -d'_' -f1| cut -d' ' -f1);


case $export_all_systems in
    *debian*)
        echo "Installing dependencies for Debian..."
        apt-get update && apt-get install curl wget tar gpg
        ;;
esac

if [ ! -d /usr/bin/git ];
then
    echo "Installing Git..."
    case $export_all_systems in
        *debian*)
            echo "Downloading Git from Debian and installing with apt..."
            apt-get install git
            ;;
        *arch*)
            echo "Downloading Git from Arch Linux and installing with pacman..."
            sudo pacman -S git
            ;;
        *Mac*)
            echo "Downloading Git from Mac and installing with brew..."
            brew install git
            ;;
            *)
            echo "Exiting script, because your system is not supported."
            exit 1
    esac
else
    echo "Git is already installed."
fi

if [ ! -d /usr/bin/zsh ];
then
    echo "Installing Zsh..."
    case $export_all_systems in
        *debian*)
            echo "Downloading Zsh from Debian and installing with apt..."
            apt-get install zsh
            ;;
        *arch*)
            echo "Downloading Zsh from Arch Linux and installing with pacman..."
            sudo pacman -S zsh
            ;;
        *Mac*)
            echo "Downloading Zsh from Mac and installing with brew..."
            brew install zsh
            ;;
            *)
            echo "Exiting script, because your system is not supported."
            exit 1
    esac
else
    echo "Zsh is already installed."
fi


git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.13.1

echo "Installing asdf"

echo ". "~/.asdf/asdf.sh"" >> ~/.zshrc

source ~/.asdf/asdf.sh

echo "Installing nodejs plugin"
asdf plugin-add nodejs

echo "Installing nodejs 16.20.2"
asdf install nodejs 16.20.2

echo "Installing nodejs latest"
asdf install nodejs latest

echo "Setting nodejs 16.20.2 as global"
asdf global nodejs 16.20.2

echo "Installing yarn plugin"
asdf plugin-add yarn

echo "Installing yarn latest"
asdf install yarn latest

echo "Setting yarn latest as global"
asdf global yarn latest

echo "Installing python plugin"
asdf plugin-add python

echo "Installing python 3.9.7"
asdf install python 3.9.7

echo "Setting python 3.9.7 as global"
asdf global python 3.9.7

echo "Installing golang plugin"
asdf plugin-add golang

echo "Installing golang latest"
asdf install golang latest

echo "Installing rust plugin"
asdf plugin-add rust

echo "Installing rust latest"
asdf install rust latest

echo "Setting rust latest as global"
asdf global rust latest

echo "Installing java plugin"
asdf plugin-add java

echo "Installing java latest"
asdf install java latest

echo "Installing java temurin-17.0.9+9"
asdf install java temurin-17.0.9+9

echo "Setting java temurin-17.0.9+9 as global"
asdf global java temurin-17.0.9+9

