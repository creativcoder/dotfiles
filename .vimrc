python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

set tabstop=4

set laststatus=2

set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256
