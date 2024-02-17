-- Define keymap variable and options
local kmap = vim.keymap
local opts = { noremap = true, silent = true }

-- Insert mode mappings for autocomplete navigation
kmap.set("i", "<C-j>", [[\<C-n>]], opts)
kmap.set("i", "<C-k>", [[\<C-p>]], opts)

-- Normal mode mapping to select all text
kmap.set("n", "<C-a>", "gg<S-v>G", opts)

-- Insert mode mapping for ESC key
kmap.set("i", "jk", "<ESC>", opts)

-- Normal mode mapping to save the file
kmap.set("n", "<leader>w", "<cmd>w<cr>", opts)

-- Normal mode mapping to save and close Neovim
kmap.set("n", "<leader>q", ":wqa!<CR>", opts)

-- Normal mode mappings for tab switching
kmap.set("n", "<C-j>", ":bnext<CR>", opts)
kmap.set("n", "<S-h>", ":bnext<CR>", opts)
kmap.set("n", "<C-k>", ":bprev<CR>", opts)
kmap.set("n", "<S-l>", ":bprev<CR>", opts)

-- Normal mode mapping to close the current tab
kmap.set("n", "<C-w>", ":close<CR>", opts)

-- Normal mode mapping to toggle text wrapping
kmap.set("n", "<M-z>", ":set wrap!<CR>", opts)

-- Insert mode mappings for autocomplete navigation
kmap.del("i", "<C-j>")
kmap.del("i", "<C-k>")
kmap.set("i", "<C-j>", "<C-n>", opts)
kmap.set("i", "<C-k>", "<C-p>", opts)

-- Normal mode mapping to format the file
kmap.del("n", "<leader>uf")
kmap.set("n", "fm", [[:normal gg=G<CR>]], opts)

-- Normal mode mapping to rename a function
kmap.set("n", "cn", "<leader>cr", opts)

-- open line without moving cursor or entering insert mode
kmap.set("n", "<leader>o", ":normal! o<cr>")
kmap.set("n", "<leader>O", ":normal! O<cr>")

-- change word with <c-c>
vim.keymap.set("n", "<C-c>", "<cmd>normal! ciw<cr>a")

-- toggle comment
kmap.set("n", "<leader>/", "gcc", opts)
kmap.set("x", "<leader>/", "gc", opts)
