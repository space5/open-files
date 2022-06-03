"---------------------------------------------------------------------------
" 検索の挙動に関する設定:
"
" 検索時に大文字小文字を無視 (noignorecase:無視しない)
set ignorecase
" 大文字小文字の両方が含まれている場合は大文字小文字を区別
set smartcase
" 検索時にファイルの最後まで行ったら最初に戻る (nowrapscan:戻らない)
set wrapscan

"---------------------------------------------------------------------------
" 編集に関する設定:
"
" タブの画面上での幅
set tabstop=4
" タブをスペースに展開しない (expandtab:展開する)
set noexpandtab
" 自動的にインデントする (noautoindent:インデントしない)
set autoindent
" バックスペースでインデントや改行を削除できるようにする
set backspace=indent,eol,start
" 括弧入力時に対応する括弧を表示 (noshowmatch:表示しない)
set showmatch
" コマンドライン補完するときに強化されたものを使う(参照 :help wildmenu)
set wildmenu
" テキスト挿入中の自動折り返しを日本語に対応させる
"set formatoptions+=mM
set shiftwidth=4
"ソフトタブを有効にする
set expandtab
"折り返さない
set nowrap

"---------------------------------------------------------------------------
" GUI固有ではない画面表示の設定:
"
" 行番号を非表示 (number:表示)
set number
" ルーラーを表示 (noruler:非表示)
set ruler
" タブや改行を非表示 (list:表示)
set nolist
" どの文字でタブや改行を表示するかを設定
"set listchars=tab:>-,extends:<,trail:-,eol:<
" 長い行を折り返して表示 (nowrap:折り返さない)
"set wrap
" 常にステータス行を表示 (詳細は:he laststatus)
set laststatus=2
" コマンドラインの高さ (Windows用gvim使用時はgvimrcを編集すること)
set cmdheight=2
" コマンドをステータス行に表示
set showcmd
" タイトルを表示
set title
" 画面を黒地に白にする (次行の先頭の " を削除すれば有効になる)
"colorscheme evening " (Windows用gvim使用時はgvimrcを編集すること)
"ステータスバーに文字コードと改行コードを表字
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
"ペースト時 の vim のオートインデントを無効にする
set paste

"---------------------------------------------------------------------------
" その他
"
set clipboard+=unnamed
"カラースキーマを設定
colorscheme molokai
syntax on
let g:molokai_original = 1
let g:rehash256 = 1
set background=dark
" 検索時のハイライト
set hlsearch

"---------------------------------------------------------------------------
" NERDTreeの設定
"
nnoremap <silent><C-e> :NERDTreeToggle<CR>

"---------------------------------------------------------------------------
" 画面分割
"
nnoremap s <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H

"---------------------------------------------------------------------------
" 勝手に作るファイルを無効にする
"
set noswapfile
set nobackup
set viminfo=
set noundofile

"---------------------------------------------------------------------------
" grepのとき自動的にquickfix-windowを開く
"
autocmd QuickFixCmdPost *grep* cwindow

"---------------------------------------------------------------------------
" 文字コードを正しく認識して、動作不良を起こさないため
"
set fileformats=unix,dos,mac
set fileencodings=utf-8,sjis,euc-jp

"---------------------------------------------------------------------------
" TAG
"
" タグジャンプで候補が複数ある場合は一覧表示
"nnoremap <C-]> g<C-]>
"inoremap <C-]> <ESC>g<C-]>
" tags ファイルを上位のディレクトリからも検索
set tags=./tags;,tags;

"---------------------------------------------------------------------------
" F8キーでタグバーウィンドウが切り替える
"
nmap <F8> :TagbarToggle<CR>

"---------------------------------------------------------------------------
" Unite.vim
"
" カーソル位置の単語をgrep検索
nnoremap <silent> ,cg :<C-u>Unite grep:. -buffer-name=search-buffer<CR><C-R><C-W>
" unite grep に ag(The Silver Searcher) を使う
if executable('ag')
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
  let g:unite_source_grep_recursive_opt = ''
endif

"---------------------------------------------------------------------------
" ctrlp.vim
"
let g:ctrlp_user_command = 'ag %s -l'

"---------------------------------------------------------------------------
" terminalの設定
"
" 画面下部に出すようにする
set splitbelow
" terminalのサイズ指定
"set termwinsize=10x0

"---------------------------------------------------------------------------
" quickrunの設定
"

"---------------------------------------------------------------------------
" NERDTreeの設定
"
" .classファイルを表示しない
"let NERDTreeIgnore = ['\.class$', '^tags$']

"---------------------------------------------------------------------------
" vim-table-mode
" :TableModeToggleでon/offを切り替える
"
let g:table_mode_corner = '|'
