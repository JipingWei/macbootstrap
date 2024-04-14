#!bin/bash
[ -z "${BRANCH}" ] && export BRANCH="master"

if [[ -e ~/.macbootstrap ]]; then
  rm -rf ~/.macbootstrap
fi

if [[ ! -e /usr/local/bin/brew ]]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "You have installed brew"
fi

brew install git

git clone --depth=1 -b ${BRANCH} git@github.com:freelf/macbootstrap.git ~/.macbootstrap
cd ~/.macbootstrap
bash install.sh
