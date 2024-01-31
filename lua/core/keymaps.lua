-- navigate the vim panels

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- move panes
keymap.set("n", "<c-k>", ":wincmd k<CR>", opts)
keymap.set("n", "<c-j>", ":wincmd j<CR>", opts)
keymap.set("n", "<c-h>", ":wincmd h<CR>", opts)
keymap.set("n", "<c-l>", ":wincmd l<CR>", opts)
keymap.set("n", "<leader>h", ":nohlsearch<CR>")

-- New tab
keymap.set("n", "<te>", ":tabedit", opts)

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

--Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Resize window
keymap.set("n", "<m-k>", "<C-w><")
keymap.set("n", "<m-j>", "<C-w>>")
keymap.set("n", "<m-h>", "<C-w>+")
keymap.set("n", "<m-l>", "<C-w>-")

--Nvim Tree
keymap.set("n", "<c-n>", ":NvimTreeFindFile<CR>", opts)
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
keymap.set("n", "<leader>bf", ":NvimTreeBuffersRevealFloat<CR>", opts)

local map = vim.api.nvim_set_keymap

-- Move to previous/next
map('n', '<s-tab>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<tab>', '<Cmd>BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)
-- Goto buffer in position...
map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)
-- Pin/unpin buffer
map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
-- Close buffer
map('n', '<c-w>', '<Cmd>BufferClose<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
map('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
-- Sort automatically by...
map('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
map('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
map('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
map('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used
