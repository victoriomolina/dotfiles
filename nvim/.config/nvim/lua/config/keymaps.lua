-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

local discipline = require("d3us.discipline")

-- Enable folke's vim discipline
discipline.cowboy()

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Undo
keymap.set("n", "<C-z>", "u", opts)
keymap.set("i", "<C-z>", "<C-o>u", opts)

-- Redo
keymap.set("i", "<C-r>", "<C-o><C-r>", opts)

-- Copy/cut to clipboard
keymap.set("n", "<C-c>", '"+yy', opts)
keymap.set("n", "<C-x>", '"+dd', opts)
keymap.set("i", "<C-c>", '<C-o>"+yy', opts)
keymap.set("i", "<C-x>", '<C-o>"+dd', opts)
keymap.set("v", "<C-c>", [["+y]], opts)
keymap.set("v", "<C-x>", [["+d]], opts)

-- Paste from clipboard
keymap.set("i", "<C-v>", '<C-o>"+p', opts)
keymap.set("v", "<C-v>", '"_d"+p', opts)

-- Indent/outdent
keymap.set("i", "<S-Tab>", "<C-o><<", opts) -- Outdent current line
keymap.set("v", "<Tab>", ">gv", opts) -- Indent selection
keymap.set("v", "<S-Tab>", "<gv", opts) -- Outdent selection

-- Word-wise deletion
keymap.set("i", "<A-Del>", "<C-w>", opts)
keymap.set("i", "<A-BS>", "<C-w>", opts) -- Alternative

-- Delete selection (black hole)
keymap.set("v", "<Del>", '"_d', opts)
keymap.set("v", "<BS>", '"_d', opts) -- Alternative

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Word selection
keymap.set("n", "<A-S-Left>", "vb", opts)
keymap.set("n", "<A-S-Right>", "ve", opts)
keymap.set("i", "<A-S-Left>", "<C-o>vb", opts)
keymap.set("i", "<A-S-Right>", "<C-o>ve", opts)
keymap.set("v", "<A-S-Left>", "b", opts)
keymap.set("v", "<A-S-Right>", "e", opts)

-- Line selection
keymap.set("n", "<S-Left>", "vh", opts)
keymap.set("n", "<S-Right>", "vl", opts)
keymap.set("n", "<S-Up>", "vk", opts)
keymap.set("n", "<S-Down>", "vj", opts)
keymap.set("i", "<S-Left>", "<C-o>vh", opts)
keymap.set("i", "<S-Right>", "<C-o>vl", opts)
keymap.set("i", "<S-Up>", "<C-o>vk", opts)
keymap.set("i", "<S-Down>", "<C-o>vj", opts)
keymap.set("v", "<S-Left>", "h", opts)
keymap.set("v", "<S-Right>", "l", opts)
keymap.set("v", "<S-Up>", "k", opts)
keymap.set("v", "<S-Down>", "j", opts)

-- Line position
keymap.set("n", "<A-Up>", ":m-2<CR>", opts)
keymap.set("n", "<A-Down>", ":m+1<CR>", opts)
keymap.set("i", "<A-Up>", "<C-o>:m-2<CR>", opts) -- Move line up in insert mode
keymap.set("i", "<A-Down>", "<C-o>:m+1<CR>", opts) -- Move line down in insert mode

-- Selection position
keymap.set("v", "<A-Up>", ":m-2<CR>gv", opts)
keymap.set("v", "<A-Down>", ":m'>+1<CR>gv", opts)

-- Word navigation
keymap.set("n", "<A-Left>", "b", opts)
keymap.set("n", "<A-Right>", "w", opts)
keymap.set("i", "<A-Left>", "<C-o>b", opts)
keymap.set("i", "<A-Right>", "<C-o>w", opts)

-- Line navigation
keymap.set("n", "<C-b>", "0", opts)
keymap.set("n", "<C-e>", "$", opts)
keymap.set("i", "<C-b>", "<C-o>0", opts) -- Move to start of line
keymap.set("i", "<C-e>", "<C-o>$", opts) -- Move to end of line

-- Buffer navigation
keymap.set("n", "<leader><tab>", ":bnext<CR>", opts)
keymap.set("n", "<leader><S-tab>", ":bprev<CR>", opts)

-- Tab navigation
keymap.set("n", "te", ":tabedit<CR>", opts)
keymap.set("n", "<tab>", ":tabnext<CR>", opts)
keymap.set("n", "<s-tab>", ":tabprev<CR>", opts)

-- Jumplist navigation
keymap.set("n", "<C-o>", "<C-o>", opts) -- Jump back
keymap.set("n", "<C-i>", "<C-i>", opts) -- Jump forward

-- File navigation
keymap.set("n", "<C-u>", "gg", opts)
keymap.set("n", "<C-d>", "G", opts)
keymap.set("i", "<C-u>", "<C-o>gg", opts)
keymap.set("i", "<C-d>", "<C-o>G", opts)

-- Pane navigation
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Split pane
keymap.set("n", "ss", ":split<CR>", opts)
keymap.set("n", "sv", ":vsplit<CR>", opts)

-- Buffer closing
keymap.set("n", "<leader>q", ":bdelete<CR>", opts)

-- Resize pane
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- Increment/decrement number
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Diagnostics
keymap.set("n", "<Q-j>", function()
  vim.diagnostic.get_next()
end, opts) -- Go to next diagnostic
