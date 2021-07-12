let mapleader = " "                                                                                                                                                                         

nnoremap <Space> <NOP>

nnoremap <Leader>pf :Files<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

vnoremap C "+y<CR>
nnoremap P "+p<CR>
nnoremap <leader>pl "0p<CR>

nnoremap <leader>tab :set noexpandtab <bar> :retab!<CR>
nnoremap <leader>spa :set expandtab <bar> :retab!<CR>

let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
let $FZF_DEFAULT_COMMAND="rg --files --hidden" 
