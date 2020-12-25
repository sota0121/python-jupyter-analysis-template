# python-jupyter-analysis-template
Python on Jupyter 分析環境のテンプレート

## 前提条件

- OS
  - macOS
- Python version
  - Python 3.8.5
- Shell
  - zsh : /usr/local/bin/zsh

## 参考サイト

- [pyenvでのPython仮想環境の作り方まとめ](https://qiita.com/ysdyt/items/5008e607343b940b3480)
- [【2020年版】とりあえず入れておくべきおすすめPythonパッケージ25選【Python】](https://karupoimou.hatenablog.com/entry/%E3%81%8A%E3%81%99%E3%81%99%E3%82%81Python%E3%83%91%E3%83%83%E3%82%B1%E3%83%BC%E3%82%B8)

## 全体の流れ

1. install `pyenv` **※未インストールの場合のみ**
2. install `pyenv-virtualenv` **※未インストールの場合のみ**
3. install `python 3.x.x` **※未インストールの場合のみ**
4. ===分析環境構築時毎回実施する想定↓↓===
5. 仮想環境構築 at local
6. install packages with requirements.txt

## 最終的に作れる環境はどんなものか？

- pyenv-virtualenv を用いたフォルダ内に閉じたPython仮想環境
- Pythonバージョンは3.8.5
- 本リポジトリのrequirements.txtに記載されたパッケージが含まれた環境

---

## スクリプト実行する場合

### 未インストールの場合のみ実施すること

1. install pyenv
2. install pyenv-virtualenv

```bash
chmod +x ./setup_pyenv-virtualenv.sh
./setup_pyenv-virtualenv.sh
```

### 分析環境構築時、毎回実施すること

1. install python 3.x.x (未インストールの場合のみ実行)
2. 仮想環境構築 at local
3. パッケージインストール

```bash
chmod +x ./setup_local_virtualenv.sh
./setup_local_virtualenv.sh
```

---

## 自分でコマンドを打つ場合の参考（スクリプトと同じ内容）
### 未インストールの場合のみ実施すること

#### 1. install `pyenv`

```bash:setup_pyenv.sh
$ brew install pyenv
$ echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
$ echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
$ echo 'eval "$(pyenv init -)"' >> ~/.zshrc
$ source ~/.zshrc
```

#### 2. install `pyenv-virtualenv`

```bash:setup_pyenv_virtualenv.sh
$ brew install pyenv-virtualenv
$ echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.zshrc
$ echo export PYENV_VIRTUALENV_DISABLE_PROMPT=1 >> ~/.zshrc
$ source ~/.zshrc
```

シェルに再ログイン
`exec $SHELL -l`

#### 3. install `python 3.x.x`

ここでは、3.8.5をインストールすることとする

`pyenv install 3.8.5`


### 分析環境構築時、毎回実施すること

#### 4. 仮想環境構築 at local

```bash:setup_virtualenv_local.sh
$ pyenv virtualenv 3.8.5 basic-analysis  #ここでは basic-analysis が環境の名前となる
$ pyenv local basic-analysis
```

#### 5. パッケージインストール

先にpipをアップグレードして、パッケージインストールする

```bash:install_python_packages.sh
$ pip install -U pip
$ pip install -r requirements.txt
```
