ARCH=$(uname)

function install_brew() {
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
}

#TODO when is apt missing in Ubuntu? minis ? wheres lastest?
# funct install_apt() {

# }

function its_darwin() {
    if ! uuidgen_loc=$(type -p uuidgen) || [[ -z $uuidgen_loc ]]; 
    then
        brew install uuidgen
    fi

    if ! awscli_loc=$(type -p awscli) || [[ -z $awscli_loc ]]; 
    then
        brew install awscli
    fi
}


if [[ uname == "Darwin" ]];
then
    its_darwin
fi
