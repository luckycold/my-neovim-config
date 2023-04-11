vim.g.mapleader = " "
-- Go back to file manager
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- While highlighting, move selected text with your cursor and it will autoindent when inbetween code.
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Move line below and adds it to the end of the current line (with a space) while also keeping your cursor in the same place.
vim.keymap.set("n", "J", "mzJ`z")
-- Keeps half page jumping (d-key and u-key) in the center of the screen instead of just doing exactly half of where you currently are and the cursor be where it wants to be.
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- Search terms will stay in the middle (Think whenever you use a '/')
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- This allows you to keep your current pasted item instead of grabbing the next item you just pasted over
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Yanks current highlighted text into system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Makes when you delete not put the selected text into your buffer (Basically doesn't copy it into VIM's clipboard)
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- This might cause issues according to: https://youtu.be/w7i4amO_zaE?t=1672
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Something bad about the default "Q" hotkey?
vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format()
end)

-- QuickFix Navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Replace the current word you're on
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
-- Make the current file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
