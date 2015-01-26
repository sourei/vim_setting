set nocompatible	" vi互換にしない
set tabstop=4		" 画面上でタブ文字が占める幅
set shiftwidth=4	" 自動インデントでずれる幅
set autoindent		" 改行時に前の行のインデントを継続する
set smartindent		" 改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set hlsearch		" 検索結果のハイライトを有効にする

"---------------------------
" Start Neobundle Settings.
"---------------------------
" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/
 
" Required:
call neobundle#begin(expand('~/.vim/bundle/'))
 
" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'
 
" 今後このあたりに追加のプラグインをどんどん書いて行きます！！"
NeoBundle 'Shougo/unite.vim'
NeoBundle 'scrooloose/nerdtree'

call neobundle#end()
 
" Required:
filetype plugin indent on
 
" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
" 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
NeoBundleCheck
 
"-------------------------
" End Neobundle Settings.
"-------------------------

syntax on

" バックスペースでなんでも（インデント、EOL、行頭）削除する
set backspace=indent,eol,start
colorscheme ron

" NERDTreeをCtrl + e で表示 
nnoremap <silent><C-e> :NERDTreeToggle<CR>
