local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
  "JoosepAlviste/nvim-ts-context-commentstring",
  "hail2u/vim-css3-syntax",
  "jiangmiao/auto-pairs",
  "mattn/emmet-vim",
  "prettier/vim-prettier",
  "sheerun/vim-polyglot",
  "tpope/vim-commentary",
  "tpope/vim-repeat",
  "tpope/vim-surround",
	{
		'nvim-treesitter/nvim-treesitter',
        event = { 'BufReadPost', 'BufNewFile' },
        config = function()
            require("nvim-treesitter.configs").setup {
                ensure_installed = "all",
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false,
                },
                indent = {
                    enable = true,
                },
                ts_context_commentstring = {
                    enable = true,
                    enable_autocmd = false,
                },
            }
        end,
        build = ':TSUpdate'
	},
  "alexvzyl/nordic.nvim",
  "catppuccin/nvim",
  "ellisonleao/gruvbox.nvim",
  "embark-theme/vim",
  "everviolet/nvim",
  "metalelf0/black-metal-theme-neovim",
  "mofiqul/vscode.nvim",
  "navarasu/onedark.nvim",
  "nordtheme/vim",
  "sainnhe/everforest",
  "sainnhe/gruvbox-material",
  "sainnhe/sonokai",
  "savq/melange-nvim",
  "vague2k/vague.nvim",
  "webhooked/kanso.nvim",
})

