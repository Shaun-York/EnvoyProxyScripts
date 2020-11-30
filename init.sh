ARCH=$(uname)

function install_brew() {
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
}

#TODO when is apt missing in Ubuntu? minis ? wheres lastest?
# funct install_apt() {

# }

function its_darwin() {
    if ! brew_loc="$(type -p "brew")" || [[ -z $brew_loc ]]; then
    install_brew()
    fi

    if ! uuidgen_loc="$(type -p "uuidgen")" || [[ -z $uuidgen_loc ]]; then
    brew install uuidgen
    fi
}


