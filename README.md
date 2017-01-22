### 初期設定でできること
```sh
./setup.sh
```

- vim
  - .vimrcの配置
  - neobundleの追加

### zsh
zshをインストール
```sh
brew install zsh
```
oh-my-zshをインストール
```sh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
```
履歴検索pecoをインストール
```sh
brew install peco
```
補完機能を強化するプラグイン
```sh
brew install zsh-completions

# 初期設定する前に過去のデータは削除しておく
rm -f ~/.zcompdump; compinit
```
zshrcの中身を環境ごとに修正して配置
