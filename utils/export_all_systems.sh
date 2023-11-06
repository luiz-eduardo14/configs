if [ "$machine" == "Mac" ]; then
    export_all_systems="Mac"
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    # env for get all systems for current linux
    export_all_systems=$(ls -d /etc/[A-Za-z]*[_-][rv]e[lr]* | grep -v "lsb" | cut -d'/' -f3 | cut -d'-' -f1 | cut -d'_' -f1| cut -d' ' -f1);
fi