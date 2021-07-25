let mapleader = " "                                                                                                                                                                         
let g:jedi#goto_command = "<leader>gd"

nnoremap <Space> <NOP>

nnoremap <Leader>pf :Files<CR>
nnoremap <Leader>rg :Rg<CR>
nnoremap <Leader>pb :Buffers<CR>
nnoremap <leader>fe :NvimTreeToggle<CR>

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

vnoremap C "+y<CR>
nnoremap <leader>pl "0p<CR>

nnoremap <leader>tab :set noexpandtab <bar> :retab!<CR>
nnoremap <leader>spa :set expandtab <bar> :retab!<CR>

let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
let $FZF_DEFAULT_COMMAND="rg --files --hidden" 
