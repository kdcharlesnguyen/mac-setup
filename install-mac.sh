/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'export PATH=/opt/homebrew/bin:$PATH' >> ~/.zshrc

source ~/.zshrc

brew install powerlevel10k
echo 'source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc

brew install zsh-autocomplete

# Should be at the top of .zshrc file
echo 'source /path/to/zsh-autocomplete/zsh-autocomplete.plugin.zsh' >> ~/.zshrc

brew install zsh-autosuggestions
echo 'source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh' >> ~/.zshrc

# Personal
brew install maccy
brew install yt-dlp
brew install vlc
brew install alfred
brew install rectangle

# Developer Tools
brew install git
brew install make
brew install ripgrep
brew install bat
brew install curl
brew install tldr
brew install wget
brew install helm
brew install kind
brew install kubernetes-cli

echo "# Clean deleted branches
function gitclean() {
  git fetch -p
  for branch in `git branch -vv | grep ': gone]' | awk '{print $1}'`;
    do git branch -D $branch;
  done
}" >> ~/.zshrc

echo "# Music downloader
ytd() {
  yt-dlp -x --audio-quality 0 --audio-format flac --ffmpeg-location ~/ffmpeg $1
}" >> ~/.zshrc

# alias ytd='yt-dlp -x --audio-quality 0 --audio-format flac --ffmpeg-location $HOME/Downloads/ffmpeg'
