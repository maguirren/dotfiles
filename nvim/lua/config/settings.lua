vim.g.mapleader = " "         -- change leader to a comma

local opt = vim.opt

opt.mouse = 'a'               -- enable mouse support
opt.clipboard = 'unnamedplus' -- copy/paste to system clipboard
opt.swapfile = false          -- don't use swapfile
opt.number = true             -- show line number
opt.relativenumber = true     -- show line number
opt.showmatch = true          -- highlight matching parenthesis
opt.splitright = true         -- vertical split to the right
opt.splitbelow = true         -- orizontal split to the bottom
opt.ignorecase = true         -- ignore case letters when search
opt.smartcase = true          -- ignore lowercase for the whole pattern
opt.linebreak = true          -- wrap on word boundary
opt.termguicolors = true
opt.guifont = "HackNerdFont"
opt.expandtab = true          -- use spaces instead of tabs
opt.shiftwidth = 4            -- shift 4 spaces when tab
opt.tabstop = 4               -- 1 tab == 4 spaces
opt.smartindent = true        -- autoindent new lines

