require('nvim_comment').setup({
    -- Linters prefer comment and line to have a space in between markers
    marker_padding = true,
    -- should comment out empty or whitespace only lines
    comment_empty = true,
    -- Should key mappings be created
    create_mappings = true,
    -- Normal mode mapping left hand side
    line_mapping = "gcc",
    -- Visual/Operator mapping left hand side
    operator_mapping = "gc"
})
vim.api.nvim_set_keymap("n", "<leader>/", ":CommentToggle<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("v", "<leader>/", ":CommentToggle<CR>", {noremap = true, silent = true})

-- vscode like keybinds for gui
vim.api.nvim_set_keymap("n", "<C-/>", ":CommentToggle<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("v", "<C-/>", ":CommentToggle<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("i", "<C-/>", ":CommentToggle<CR>", {noremap = true, silent = true})

-- keybinds for terminal that mimic control + /
vim.api.nvim_set_keymap("n", "<C-_>", ":CommentToggle<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("v", "<C-_>", ":CommentToggle<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("i", "<C-_>", ":CommentToggle<CR>", {noremap = true, silent = true})
