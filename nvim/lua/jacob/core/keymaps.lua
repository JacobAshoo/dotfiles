vim.g.mapleader = " "

local keymap = vim.keymap

-- general keymaps
keymap.set("i", "jk", "<ESC>")

keymap.set("n", "<leader>nh", ":nohl<CR>")

keymap.set("n", "x", '"_x')

-- window managment
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "split window horizontally" }) -- split horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "set windows equals sizes" }) -- equal width and height
keymap.set("n", "<leader>sx", ":close<CR>", { desc = "close current window" }) -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>", { desc = "open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>", { desc = "close current tab" }) -- close current tab
keymap.set("n", "<leader>2", ":tabn<CR>", { desc = "go to next tab" }) --  go to next tab
keymap.set("n", "<leader>1", ":tabp<CR>", { desc = "go to prev tab" }) --  go to previous tab

-- plugin keymaps

--vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>", { desc = "max or min split window" }) -- maximize or unmax split window

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "toggle file explorer" }) -- toggle file explorer

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "find file [telescope]" }) -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "find string [telescope]" }) -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "list help tags [telescope]" }) -- list available help tags

-- telescope git commands (not on youtube nvim video)
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>", { desc = "list all git commits [telescope]" }) -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set(
	"n",
	"<leader>gfc",
	"<cmd>Telescope git_bcommits<cr>",
	{ desc = "list commits for current file [telescope]" }
) -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>", { desc = "list git branch [telescope]" }) -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>", { desc = "list git status [telescope]" }) -- list current changes per file with diff preview ["gs" for git status]

-- restart lsp server (not on youtube nvim video)
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary

--harpoon
keymap.set("n", "<leader>t1", ':lua require("harpoon.term").gotoTerminal(1)<cr>i')
keymap.set("t", "<leader>x", "exit<CR><CR>")

-- jabs
keymap.set("n", "<leader>j", ":JABSOpen<CR>", { desc = "view open buffers [jabs]" })

--hop
keymap.set("n", "<leader>hw", ":HopWord<CR>", { desc = "hop to word [hop]" })

-- symbols-outline
keymap.set("n", "<leader>so", ":SymbolsOutline<Cr>", { desc = "veiw symbols [SymbolsOutline]" })
