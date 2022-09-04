" Auto install vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  "silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  silent execute '!mkdir -p '.data_dir.'/autoload'
  silent execute '!cp ~/.nix/programs/common/neovim/autoload/plug.vim '.data_dir.'/autoload/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" Plugins
call plug#begin(stdpath('data') . '/plugged')
call plug#begin()
Plug 'NoahTheDuke/vim-just'
call plug#end()

