vim.opt.expandtab = true -- Use spaces instead of tab characters for indentation
vim.opt.tabstop = 2 -- Tab characters look like two spaces
vim.opt.softtabstop = 2 -- Tab and Backspace insert/remove two spaces instead of tabs
vim.opt.shiftwidth = 2 -- >> or << or = use two spaces to indent instead of tabs
vim.opt.number = true -- Show line numbers
vim.opt.relativenumber = true -- Make line numbers relative to the current line
vim.opt.scrolloff = 16 -- Number of lines kept above/below cursor when scrolling
vim.opt.cursorline = true -- Highlight the line where the cursor is located
vim.opt.hlsearch = false -- Remove annoying highlighted text when searching
vim.opt.swapfile = false -- Do not create annoying swap files while editing
vim.opt.title = true -- Vim gives the terminal more info to put in the title text
vim.opt.cmdheight = 0 -- Only show comman line when in use
vim.opt.laststatus = 0 -- Remove status line
vim.opt.termguicolors = true -- Enable full colours instead of basic 16 or 256

-- Save undo history to disk and not just in RAM
local undodir = vim.fn.expand("~/.vim/undodir")
vim.fn.mkdir(undodir, "p")  -- Create the directory if it doesn't exist
vim.opt.undodir = undodir
vim.opt.undofile = true
