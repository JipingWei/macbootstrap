source basic.sh


# Extension for preview
brew install --cask qlcolorcode qlstephen qlmarkdown quicklook-json webpquicklook provisionql quicklookapk
brew install --cask --appdir='/usr/local/bin' qlimagesize qlvideo # Avoid password


# Install applications
# Powerline-font
# ---------------
git clone --depth=1 https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

