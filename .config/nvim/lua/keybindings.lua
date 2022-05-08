-- Keybindings
local keymap = vim.keymap.set

-- Set Leader to Space
vim.g.mapleader = ' '

-- Saving
keymap('n', '<c-s>', ':w<CR>')
keymap('i', '<c-s>', '<ESC>:w<CR>')

-- Split Navigation
keymap('n', '<c-Up>',     '<c-w>k')
keymap('n', '<c-Down>',   '<c-w>j')
keymap('n', '<c-Left>',   '<c-w>h')
keymap('n', '<c-Right>',  '<c-w>l')

-- Split Shift
keymap('n', '<s-Up>',     '<c-w>K')
keymap('n', '<s-Down>',   '<c-w>J')
keymap('n', '<s-Left>',   '<c-w>H')
keymap('n', '<s-Right>',  '<c-w>L')

-- Search clear
keymap('n', '<leader>c', ':noh<CR>')

-- Telescope bindings
keymap('n', '<leader>o', ':Telescope find_files<CR>')

-- Nvim-tree  bindings
keymap('n', '<leader>t', ':NvimTreeToggle<cr>')
keymap('n', '<leader>r', ':NvimTreeRefresh<cr>')

-- Python keybindings
keymap("n", "<leader>p", ":exec '!python' shellescape(@%, 1)<CR>")

-- LSP bindings
keymap("n", "<leader>+", ":lua vim.diagnostic.goto_next()<CR>")
keymap("n", "<leader>-", ":lua vim.diagnostic.goto_prev()<CR>")
keymap("n", "<leader>*", ":lua vim.diagnostic.setloclist()<CR>")
keymap("n", "tt", ":lua vim.diagnostic.config({virtual_text=false})<CR>")
keymap("n", "ty", ":lua vim.diagnostic.config({virtual_text=true})<CR>")

-- X11 clipboard
keymap('v', 'xyy', ':!xclip -f -sel clip<CR>')
keymap('n', 'xpp', ':-1r !xclip -o -sel clip<CR>')

