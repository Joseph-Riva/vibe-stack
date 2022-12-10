#! /bin/bash

check_command(){
    command_name="$1"
    install_command="$2"

    echo "checking if ${command_name} is installed."

    command_exists="command -v ${command_name} &2> /dev/null"
    if [ ! "${command_exists}" ]; then
        echo "${command_name} install not found."
        echo "installing {command_name}..."
        #$install_command
    fi
}

check_command "nvm" "curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash"

