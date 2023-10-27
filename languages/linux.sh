if [ -d /usr/bin/git ]; 
then
    echo "Installing Git..."
    sudo pacman -S git
else 
    echo "Git is already installed."
fi

git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.13.1

if [ -d /usr/bin/zsh ];
then
    echo "Installing Zsh..."
    sudo pacman -S zsh
else
    echo "Zsh is already installed."
fi 


echo "Installing asdf"

echo ". "~/.asdf/asdf.sh"" >> ~/.zshrc