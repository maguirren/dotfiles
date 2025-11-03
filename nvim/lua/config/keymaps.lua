local keymap = function(mode, shortcut, command, description)
    vim.keymap.set(mode, shortcut, command, {desc = description, silent = true, noremap = true, nowait = true}) 
end

-- save and quit file
keymap('n', '<leader>w', ':w<CR>', 'save file')
keymap('n', '<leader>x', ':wq<CR>', 'save and quit')

keymap({'n', 'v'}, '<leader>y', '"+y', 'copia al portapapeles del sistema')

-- ESC pressing jk
keymap('i', 'jk', '<ESC>', 'jk to esc')

-- don't use arrow keys
keymap('', '<up>', '<nop>', 'dont use')
keymap('', '<down>', '<nop>', 'dont use')
keymap('', '<left>', '<nop>', 'dont use')
keymap('', '<right>', '<nop>', 'dont use')

-- move line or block
keymap('n', '<a-k>', ':m .-2<cr>==', 'move line up')
keymap('n', '<a-j>', ':m .+1<cr>==', 'move line down')
keymap('v', '<a-k>', ":m '<-2<cr>gv=gv", 'move block up')
keymap('v', '<a-j>', ":m '>+1<cr>gv=gv", 'move block down')

-- Split window
keymap("n", "<leader>sh", ":split<Return><C-w>w", 'splits horizontal')
keymap("n", "<leader>sv", ":vsplit<Return><C-w>w", 'Split vertical')

-- navigate vim panes better
keymap('n', '<c-k>', '<C-w>k', 'Navigate up')
keymap('n', '<c-j>', '<C-w>j', 'Navigate down')
keymap('n', '<c-h>', '<C-w>h', 'Navigate left')
keymap('n', '<c-l>', '<C-w>l', 'Navigate right')

-- Resize window
keymap("n", "<C-Up>", ":resize +3<CR>")
keymap("n", "<C-Down>", ":resize -3<CR>")
keymap("n", "<C-Left>", ":vertical resize -3<CR>")
keymap("n", "<C-Right>", ":vertical resize +3<CR>")

-- Barbar
keymap("n", "<Tab>", ":BufferNext<CR>", "Move to next tab")
keymap("n", "<S-Tab>", ":BufferPrevious<CR>", "Move to previous tab")
keymap("n", "<leader>bx", ":BufferClose<CR>", "Buffer close")
keymap("n", "<A-p>", ":BufferPin<CR>", "Pin buffer")

-- Open Terminal
keymap('n', '<c-t>', '<Cmd>ToggleTerm<CR>', 'open terminal')
keymap('n', '<A-t>', '<Cmd>:ToggleTerm direction=float<CR>', 'open float terminal')

-- Open NeoTree
keymap('n', '<c-n>', ':Neotree<cr>', 'open neotree')

-- lsp
keymap("n", "K", vim.lsp.buf.hover)
keymap("n", "<leader>gf", vim.lsp.buf.declaration, 'declaration')
keymap("n", "<leader>gd", vim.lsp.buf.definition, 'definition')
keymap("n", "<leader>gr", vim.lsp.buf.references, 'references')

-- MiniMap
keymap("n", "<leader>nm", "<cmd>Neominimap Toggle<cr>", "Toggle global minimap")
