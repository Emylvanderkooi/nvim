let mapleader = " "                                                                                                                                                                         
let g:jedi#goto_command = "<leader>gd"

nnoremap <Space> <NOP>

nnoremap <leader>pf <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>rg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>pb <cmd>lua require('telescope.builtin').buffers()<cr>
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
