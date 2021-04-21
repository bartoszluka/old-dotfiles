vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', {noremap = true, silent = true})
vim.g.mapleader = ' '

-- Y acts the same as C/D - copy to the end of the line
vim.api.nvim_set_keymap('n', 'Y', 'y$', {noremap = true, silent = true})

-- close window
vim.api.nvim_set_keymap('n', '<Leader>q', ':q<CR>', {noremap = true, silent = true})

-- multiple cursors
-- vim.cmd([[ g:VM_maps={} ]])
-- vim.cmd([[let g:VM_maps['Find Under'] = '<C-m>']])
-- = '<C-m>' let g:VM_maps['Find Subword Under'] = '<C-m>' let g:VM_maps["Select Cursor Down"] = '<M-C-j>' let g:VM_maps["Select Cursor Up"]   = '<M-C-k>' ]])
-- no hl
vim.api.nvim_set_keymap('n', '<Leader>h', ':set hlsearch!<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Esc>', ':set nohlsearch<CR>', {noremap = true, silent = true})

-- explorer
vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '-', ':RnvimrToggle<CR>', {noremap = true, silent = true})

-- better window movement
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', {silent = true})
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', {silent = true})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', {silent = true})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', {silent = true})

-- TODO fix this
-- Terminal window navigation
vim.cmd([[
  tnoremap <C-h> <C-\><C-N><C-w>h
  tnoremap <C-j> <C-\><C-N><C-w>j
  tnoremap <C-k> <C-\><C-N><C-w>k
  tnoremap <C-l> <C-\><C-N><C-w>l
  inoremap <C-h> <C-\><C-N><C-w>h
  inoremap <C-j> <C-\><C-N><C-w>j
  inoremap <C-k> <C-\><C-N><C-w>k
  inoremap <C-l> <C-\><C-N><C-w>l
  tnoremap <Esc> <C-\><C-n>
]])

-- TODO fix this
-- resize with arrows
vim.cmd([[
  nnoremap <silent> <C-Up>    :resize -2<CR>
  nnoremap <silent> <C-Down>  :resize +2<CR>
  nnoremap <silent> <C-Left>  :vertical resize -2<CR>
  nnoremap <silent> <C-Right> :vertical resize +2<CR>
]])

-- better indenting
vim.api.nvim_set_keymap('v', '<', '<gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '>', '>gv', {noremap = true, silent = true})

-- Tab switch buffer
vim.api.nvim_set_keymap('n', '<TAB>', ':bnext<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<S-TAB>', ':bprevious<CR>', {noremap = true, silent = true})

-- Move selected line / block of text in visual mode
-- vim.api.nvim_set_keymap('x', 'K', ':move \'<-2<CR>gv-gv', {noremap = true, silent = true})
-- vim.api.nvim_set_keymap('x', 'J', ':move \'>+1<CR>gv-gv', {noremap = true, silent = true})

-- Move selected line / block of text in visual/insert/normal mode
-- alt + k to move up
-- alt + j to move down
vim.api.nvim_set_keymap('n', '<A-j>', ':move .+1<CR>==', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-k>', ':move .-2<CR>==', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '<A-j>', '<Esc>:move .+1<CR>==gi', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '<A-k>', '<Esc>:move .-2<CR>==gi', {noremap = true, silent = true})
vim.api.nvim_set_keymap('x', '<A-j>', ':move \'>+1<CR>gv-gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('x', '<A-k>', ':move \'<-2<CR>gv-gv', {noremap = true, silent = true})

-- Better nav for omnicomplete
vim.cmd('inoremap <expr> <c-j> (\"\\<C-n>\")')
vim.cmd('inoremap <expr> <c-k> (\"\\<C-p>\")')
-- vim.cmd('inoremap <expr> <TAB> (\"\\<C-n>\")')
-- vim.cmd('inoremap <expr> <S-TAB> (\"\\<C-p>\")')

-- vim.api.nvim_set_keymap('i', '<C-TAB>', 'compe#complete()', {noremap = true, silent = true, expr = true})

-- vim.cmd([[
-- map p <Plug>(miniyank-autoput)
-- map P <Plug>(miniyank-autoPut)
-- map <leader>n <Plug>(miniyank-cycle)
-- map <leader>N <Plug>(miniyank-cycleback)
-- ]])
