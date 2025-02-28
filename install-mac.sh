/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo export PATH=/opt/homebrew/bin:$PATH >> ~/.zshrc

brew install git
brew install maccy
brew install yt-dlp
brew install make
brew install vlc
brew install obsidian

brew install zsh-autosuggestions
echo "source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc

brew install zsh-autocomplete

# Move this to the top of .zshrc file
echo "source /path/to/zsh-autocomplete/zsh-autocomplete.plugin.zsh" >> ~/.zshrc

echo "# Clean deleted branches
function gitclean() {
  git fetch -p
  for branch in `git branch -vv | grep ': gone]' | awk '{print $1}'`;
    do git branch -D $branch;
  done
}" >> ~/.zshrc

brew install powerlevel10k
echo "source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme" >> ~/.zshrc

alias ytd='yt-dlp -x --audio-quality 0 --audio-format flac --ffmpeg-location $HOME/Downloads/ffmpeg'
