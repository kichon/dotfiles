export MANPATH=/opt/local/man:$MANPATH
export LANG=ja_JP.UTF-8
export SVN_EDITOR="vi"
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6.0/Home
export AWS_CREDENTIAL_FILE=/Users/yoichi/aws/credential-file-path
export AWS_RDS_HOME=/Users/yoichi/aws/RDSCli-1.3.003
export AWS_ELB_HOME=/Users/yoichi/aws/ElasticLoadBalancing-1.0.11.1
export AWS_AUTO_SCALING_HOME=/Users/yoichi/aws/AutoScaling-1.0.33.1
export AWS_CLOUDWATCH_HOME=/Users/yoichi/aws/CloudWatch-1.0.9.5
export EC2_HOME=/Users/yoichi/aws/ec2-api-tools-1.4.0.2
export EC2_PRIVATE_KEY=/Users/yoichi/aws/ec2-api-tools-1.4.0.2/pk-6PH23V3WKGJ5PWQXAJMPHBGGERHB3PGV.pem
export EC2_CERT=/Users/yoichi/aws/ec2-api-tools-1.4.0.2/cert-6PH23V3WKGJ5PWQXAJMPHBGGERHB3PGV.pem
export EC2_URL=https://ec2.ap-southeast-1.amazonaws.com
export ANDROID_HOME=/Developer/android-sdk-mac
export PATH=/opt/local/bin:/opt/local/sbin/:/usr/local/mysql/bin/:/usr/local/bin/:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/opt/local/bin:/opt/local/sbin/:/usr/local/mysql/bin/:/usr/local/bin/:/System/Library/Frameworks/JavaVM.framework/Versions/1.6.0/Home/bin:/Users/yoichi/aws/RDSCli-1.3.003/bin:/Users/yoichi/aws/ec2-api-tools-1.4.0.2/bin:/Users/yoichi/aws/ElasticLoadBalancing-1.0.11.1/bin:/Users/yoichi/aws/AutoScaling-1.0.33.1/bin:/Users/yoichi/aws/CloudWatch-1.0.9.5/bin:${ANDROID_HOME}/platform-tools/


HISTFILE=$HOME/.zsh-history
HISTSIZE=100000
SAVEHIST=100000

## 補完機能の強化
autoload -U compinit
fpath=(~/.zsh/completion $fpath)
autoload -Uz ~/.zsh/completion/*(:t)
compinit

## コアダンプサイズを制限
limit coredumpsize 102400

## 出力の文字列末尾に改行コードが無い場合でも表示
unsetopt promptcr

## 色を使う
setopt prompt_subst

## ビープを鳴らさない
setopt nobeep

## 内部コマンド jobs の出力をデフォルトで jobs -l にする
setopt long_list_jobs

## 補完候補一覧でファイルの種別をマーク表示
setopt list_types

## サスペンド中のプロセスと同じコマンド名を実行した場合はリジューム
setopt auto_resume

## 補完候補を一覧表示
setopt auto_list

## 直前と同じコマンドをヒストリに追加しない
setopt hist_ignore_dups

## cd 時に自動で push
setopt autopushd

## 同じディレクトリを pushd しない
setopt pushd_ignore_dups

## ファイル名で #, ~, ^ の 3 文字を正規表現として扱う
setopt extended_glob

## TAB で順に補完候補を切り替える
setopt auto_menu

## zsh の開始, 終了時刻をヒストリファイルに書き込む
setopt extended_history

## =command を command のパス名に展開する
setopt equals

## --prefix=/usr などの = 以降も補完
setopt magic_equal_subst

## ヒストリを呼び出してから実行する間に一旦編集
setopt hist_verify

# ファイル名の展開で辞書順ではなく数値的にソート
setopt numeric_glob_sort

## 出力時8ビットを通す
setopt print_eight_bit

## ヒストリを共有
setopt share_history

## 補完候補のカーソル選択を有効に
zstyle ':completion:*:default' menu select=1

## 補完候補の色づけ
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

## ディレクトリ名だけで cd
setopt auto_cd

## カッコの対応などを自動的に補完
setopt auto_param_keys

## ディレクトリ名の補完で末尾の / を自動的に付加し、次の補完に備える
setopt auto_param_slash

## スペルチェック
setopt correct

## scp用
setopt nonomatch

##
zstyle :compinstall filename '~/.zshrc'


# Interactive operation...
alias ls='ls -G'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias vi=vim
alias l='ls -la'
alias screen='screen -U'

# 
alias javac="javac -J-Dfile.encoding=UTF-8"
alias java="java -Dfile.encoding=UTF-8"

if [ -x /usr/bin/screen ]; then
   alias sc='screen -h 4000'
   alias scr='screen -r'
   alias scl='screen -ls'
   alias scd='screen -d'
   alias scx='screen -x'
fi

# Key Bind
bindkey '^R' history-incremental-pattern-search-backward
bindkey '^S' history-incremental-pattern-search-forward
