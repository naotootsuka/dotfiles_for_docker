set nocompatible
" filetype off

set encoding=utf-8

" 表示関係
colorscheme molokai
set t_Co=256

syntax on
set number " 行数の表示
set title " 編集ファイルを常に表示
set autoindent " インデントがそろうように自動的にスペースを入れる
set expandtab "タブをスペースに置き換える
set smarttab
set wrap " 長いテキストの折り返し
set textwidth=0 " 自動的に改行が入るのを無効化
set colorcolumn=80 " その代わり80文字目にラインを入れる
set laststatus=2 " 画面最下部のステータス行を常に表示。
set cursorline " カーソル行の色の変更。

" 編集関係
set showmatch " 対応する括弧などをハイライト表示する
set matchpairs& matchpairs+=<:> " 対応括弧に'<'と'>'のペアを追加
set backspace=indent,eol,start " バックスペースでなんでも消せるようにする

" 検索関係
set hlsearch " 検索マッチテキストをハイライト
set infercase " 補完の際に、大文字小文字を区別しない。
" set nohlsearch " ハイライトを一時的に辞める場合。
set wrapscan " ファイル末尾まで進んだら、ファイル先頭に戻って再検索。
set ignorecase " 大文字/小文字の区別なく検索する。
set smartcase " 大文字の場合は普通の検索(大文字小文字を無視しない)
set incsearch " インクリメンタルサーチを行う。
set wildmenu " コマンドモードでの補完モード。
set wildmode=list:full " 補完モードの表示方法の指定。
set wildignore=*.o,*.obj,*.pyc,*.so,*.dll " 無視されるファイルパターン。

"検索語が画面の真ん中に来るようにする
nmap n nzz
nmap N Nzz
nmap * *zz
nmap # #zz
nmap g* g*zz
nmap g# g#zz

" キーバインド
noremap <S-h> ^
noremap <S-l> $
nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up>   gk
" nnoremap ,p "*p
inoremap <silent> jj <ESC>

if has("autocmd")
  "ファイルタイプの検索を有効にする
  filetype plugin on
  "ファイルタイプに合わせたインデントを利用
  filetype indent on
  "sw=softtabstop, sts=shiftwidth, ts=tabstop, et=expandtabの略
  autocmd FileType html        setlocal sw=2 sts=2 ts=2 et
  autocmd FileType js          setlocal sw=2 sts=2 ts=2 et
  autocmd FileType python      setlocal sw=4 sts=4 ts=4 et
  autocmd FileType json        setlocal sw=2 sts=2 ts=2 et
  autocmd FileType css         setlocal sw=2 sts=2 ts=2 et
  autocmd FileType vue         setlocal sw=2 sts=2 ts=2 et
  autocmd FileType javascript  setlocal sw=2 sts=2 ts=2 et
endif
