#! /usr/local/bin/zsh

# If python has not been installed yet, install specific version Python.
PYTHON_VERSION="3.8.5"

if [ ! -e /Users/$USER/.pyenv/versions/$PYTHON_VERSION ]; then
    # 存在しない場合
    pyenv install $PYTHON_VERSION
fi

pyenv virtualenv $PYTHON_VERSION basic-analysis  #ここでは basic-analysis が環境の名前となる
pyenv local basic-analysis

pip install -U pip
pip install -r requirements.txt
