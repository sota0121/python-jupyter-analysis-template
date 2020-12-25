#! /usr/local/bin/zsh
brew install pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(pyenv init -)"' >> ~/.zshrc
source ~/.zshrc

brew install pyenv-virtualenv
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.zshrc
echo export PYENV_VIRTUALENV_DISABLE_PROMPT=1 >> ~/.zshrc
source ~/.zshrc

exec $SHELL -l
