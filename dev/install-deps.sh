#! /bin/bash

check_command(){
    command_name="$1"
    install_command="$2"

    echo "checking if ${command_name} is installed."

    command_exists(){
        command -v "${command_name}" 2>&1 > /dev/null
    }
    if ! command_exists; then
        echo "${command_name} install not found."
        echo "installing ${command_name}..."
        eval "${install_command}"
    else
        echo "${command_name} is already installed."
    fi
}

check_command "nvm" "curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash"
echo ''
check_command "npm" "nvm install node"
echo ''
check_command "go" "echo please visit https://go.dev/doc/install and install go before continuing; exit 1"
echo ''

