local cmd = vim.cmd

return require('packer').startup({
  function ()
    use { 'wbthomason/packer.nvim', opt = true }

    -- General {{{

    use { 'vim-airline/vim-airline' }
    use { 'vim-airline/vim-airline-themes' }
    use { 'editorconfig/editorconfig-vim' }
    use { 'Yggdroot/indentLine' }
    use { 'tpope/vim-fugitive' }
    use { 'tpope/vim-surround' }
    use { 'Raimondi/delimitMate' }
    use { 'jeetsukumaran/vim-filebeagle' }
    use { 'mhinz/vim-startify' }

    -- }}}

    -- Tabs (not the VIM concept) & Icons {{

    use { 'kyazdani42/nvim-web-devicons' }
    use { 'romgrk/barbar.nvim' }

    -- }}}

    -- LSP {{{

    use { 'neovim/nvim-lspconfig' }
    use { 'hrsh7th/nvim-compe' }

    -- }}}

    -- Programming Languages Support {{{

    -- Go
    use {
      'fatih/vim-go',
      run = function()
        cmd 'GoUpdateBinaries'
      end
    }
    use { 'sebdah/vim-delve' }

    -- Python
    use { 'davidhalter/jedi-vim' }
    use { 'raimon49/requirements.txt.vim', ft = 'requirements'}
    use { 'python-mode/python-mode', ft = 'python', branch = 'develop' }

    -- Lua
    use { 'tjdevries/nlua.nvim' }

    -- Markdown
    use { 'plasticboy/vim-markdown' }

    -- }}}

    -- Colorschemes {{{

    use { 'ayu-theme/ayu-vim' }
    use { 'kaicataldo/material.vim', branch = 'main' }
    use { 'arcticicestudio/nord-vim' }

    -- }}}

  end,
  config = { git = { clone_timeout = 120 } }
})

