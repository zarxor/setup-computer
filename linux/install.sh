if [ "${USER}" = "root" ]; then
    echo "Don't run as root"
    exit 0
fi

if ! command -v oh-my-posh &>/dev/null; then
    sudo apt-get update
    sudo apt-get -y install unzip
    sudo curl -s https://ohmyposh.dev/install.sh | bash -s
    sudo oh-my-posh font install Cousine
fi

if ! command -v volta &>/dev/null; then
    curl https://get.volta.sh | bash
fi

if ! command -v yarn &>/dev/null; then
    echo "Missing yarn"
    
fi

# if ! grep -q -F "oh-my-posh" "${HOME}/.bashrc"; then
#     echo 'eval "$(oh-my-posh init bash --config /mnt/c/Users/johan/OneDrive/oh-my-posh.omp.json)"' >> "${HOME}/.bashrc"
#     exec bash
# fi

mkdir -p "${HOME}/dev/github/"
mkdir -p "${HOME}/dev/random/"
mkdir -p "${HOME}/dev/devops/"