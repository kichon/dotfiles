" タブ文字の代わりに同じ幅の空白文字を入れる
set expandtab

" タブ文字の表示幅
set tabstop=4

" タブやバックスペースの使用などの編集操作をするときに、タブが対応する空白の数
set softtabstop=4

" インデントの各階段に使われる空白の数
set shiftwidth=4

" オートインデント
"set autoindent
set smartindent

" シンタックスハイライトを有効にする
syntax on

" 検索結果文字列のハイライトを有効にする
set hlsearch

" 検索時に大文字小文字を区別しない
set ignorecase

" 最後まで検索したら先頭に戻る
set wrapscan

" タイトルをウィンドウ枠に表示する
set title

" 入力中のコマンドをステータスに表示する
set showcmd

" ステータスラインを常に表示
set laststatus=2

" 括弧入力時の対応する括弧を表示
set showmatch

" 対応する括弧の表示時間を2にする
set matchtime=2

" コメント分の色を変更
highlight Comment ctermfg=DarkCyan

" 括弧を自動補完
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
vnoremap { "zdi^V{<C-R>z}<ESC>
vnoremap [ "zdi^V[<C-R>z]<ESC>
vnoremap ( "zdi^V(<C-R>z)<ESC>
vnoremap " "zdi^V"<C-R>z^V"<ESC>
vnoremap ' "zdi'<C-R>z'<ESC>
