local modules = {}

-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
-- SYSTEM -------------------------------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

modules["nvim-lua/plenary.nvim"] = {}
modules["nvim-lua/popup.nvim"] = {}

-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
-- UI -----------------------------------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

local ui_config = require("modules.global.configs.ui")

modules["lvim-tech/lvim-colorscheme"] = {
    event = {
        "VimEnter",
        "BufRead",
        "BufNewFile"
    },
    config = ui_config.lvim_colorscheme
}

modules["glepnir/dashboard-nvim"] = {
    event = "VimEnter",
    config = ui_config.dashboard_nvim
}

modules["kyazdani42/nvim-tree.lua"] = {
    requires = "kyazdani42/nvim-web-devicons",
    cmd = "NvimTreeToggle",
    config = ui_config.nvim_tree
}

modules["folke/which-key.nvim"] = {
    event = "BufWinEnter",
    config = ui_config.which_key
}

modules["nvim-lualine/lualine.nvim"] = {
    requires = "kyazdani42/nvim-web-devicons",
    event = {
        "VimEnter",
        "BufRead",
        "BufNewFile"
    },
    config = ui_config.lualine
}

modules["is0n/fm-nvim"] = {
    config = ui_config.fm
}

modules["akinsho/toggleterm.nvim"] = {
    cmd = {
        "TTFloat",
        "TTOne",
        "TTTwo",
        "TTThree"
    },
    config = ui_config.toggleterm
}

modules["folke/zen-mode.nvim"] = {
    cmd = "ZenMode",
    config = ui_config.zen_mode
}

modules["oberblastmeister/zoom.nvim"] = {
    cmd = "Zoom"
}

modules["lukas-reineke/indent-blankline.nvim"] = {
    event = {
        "BufRead",
        "BufNewFile"
    },
    config = ui_config.indent_blankline
}

modules["lvim-tech/lvim-focus"] = {
    event = {
        "VimEnter",
        "BufRead",
        "BufNewFile"
    },
    config = ui_config.lvim_focus
}

modules["lvim-tech/lvim-helper"] = {
    cmd = "LvimHelper",
    config = ui_config.lvim_helper
}

-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
-- Editor -------------------------------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

local editor_config = require("modules.global.configs.editor")

modules["vim-ctrlspace/vim-ctrlspace"] = {
    cmd = "CtrlSpace"
}

modules["nanozuki/tabby.nvim"] = {
    config = editor_config.tabby,
    after = "vim-ctrlspace"
}

modules["tyru/open-browser.vim"] = {
    event = {
        "BufRead",
        "BufNewFile"
    }
}

modules["nvim-telescope/telescope.nvim"] = {
    requires = {
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            run = "make",
            opt = true
        },
        {
            "nvim-telescope/telescope-media-files.nvim",
            opt = true
        },
        {
            "nvim-telescope/telescope-file-browser.nvim",
            opt = true
        },
        {
            "dhruvmanila/telescope-bookmarks.nvim",
            opt = true
        },
        {
            "camgraff/telescope-tmux.nvim",
            opt = true
        }
    },
    config = editor_config.telescope
}

modules["jpalardy/vim-slime"] = {
    event = {
        "BufRead",
        "BufNewFile"
    },
    config = editor_config.vim_slime
}

modules["windwp/nvim-spectre"] = {
    event = {
        "BufRead",
        "BufNewFile"
    },
    requires = {
        {
            "nvim-lua/popup.nvim"
        },
        {
            "nvim-lua/plenary.nvim"
        }
    },
    config = editor_config.nvim_spectre
}

modules["numToStr/Comment.nvim"] = {
    event = {
        "CursorMoved"
    },
    config = editor_config.nvim_comment
}

modules["MattesGroeger/vim-bookmarks"] = {
    cmd = "BookmarkToggle",
    config = editor_config.vim_bookmarks
}

modules["ton/vim-bufsurf"] = {
    event = {
        "BufRead"
    }
}

modules["kkoomen/vim-doge"] = {
    cmd = {
        "DogeGenerate",
        "DogeCreateDocStandard"
    },
    run = ":call doge#install()",
    config = editor_config.vim_doge
}

modules["windwp/nvim-autopairs"] = {
    after = {
        "nvim-treesitter",
        "nvim-cmp"
    },
    config = editor_config.nvim_autopairs
}

modules["norcalli/nvim-colorizer.lua"] = {
    event = {
        "BufRead",
        "BufNewFile"
    },
    config = editor_config.nvim_colorize
}

modules["karb94/neoscroll.nvim"] = {
    event = {
        "BufRead",
        "BufNewFile"
    },
    config = editor_config.neoscroll
}

modules["lambdalisue/suda.vim"] = {
    event = {
        "BufRead",
        "BufNewFile"
    },
    config = editor_config.suda
}

modules["kenn7/vim-arsync"] = {
    event = {
        "BufRead",
        "BufNewFile"
    }
}

modules["phaazon/hop.nvim"] = {
    event = {
        "BufRead",
        "BufNewFile"
    },
    branch = "v1",
    config = editor_config.hop
}

modules["folke/todo-comments.nvim"] = {
    requires = "nvim-lua/plenary.nvim",
    event = {
        "BufRead",
        "BufNewFile"
    },
    config = editor_config.todo_comments
}

modules["anuvyklack/pretty-fold.nvim"] = {
    config = editor_config.pretty_fold,
    event = {
        "VimEnter",
        "BufRead",
        "BufNewFile"
    }
}

-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
-- Version control ----------------------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

local version_control_config = require("modules.global.configs.version_control")

modules["TimUntersberger/neogit"] = {
    requires = "nvim-lua/plenary.nvim",
    cmd = "Neogit",
    config = version_control_config.neogit
}

modules["lewis6991/gitsigns.nvim"] = {
    requires = "nvim-lua/plenary.nvim",
    event = {
        "BufRead",
        "BufReadPost",
        "BufNewFile"
    },
    config = version_control_config.gitsigns
}

modules["f-person/git-blame.nvim"] = {
    config = version_control_config.git_blame
}

modules["sindrets/diffview.nvim"] = {
    cmd = {
        "DiffviewOpen",
        "DiffviewFileHistory",
        "DiffviewFocusFiles",
        "DiffviewToggleFiles",
        "DiffviewRefresh"
    }
}

modules["mbbill/undotree"] = {
    event = {
        "BufRead",
        "BufNewFile"
    },
    cmd = "UndotreeToggle"
}

-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
-- Languages ----------------------------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

local languages_config = require("modules.global.configs.languages")

modules["neovim/nvim-lspconfig"] = {
    event = {
        "VimEnter",
        "BufWinEnter",
        "BufRead",
        "BufNewFile"
    },
    config = languages_config.nvim_lspconfig
}

modules["williamboman/nvim-lsp-installer"] = {
    requires = "neovim/nvim-lspconfig",
    config = languages_config.nvim_lsp_installer
}

modules["simrat39/rust-tools.nvim"] = {
    filetypes = "rust",
    requires = {
        "neovim/nvim-lspconfig",
        "nvim-lua/popup.nvim",
        "nvim-lua/plenary.nvim",
        "mfussenegger/nvim-dap",
        "nvim-telescope/telescope.nvim"
    }
}

modules["ray-x/go.nvim"] = {
    filetypes = "go",
    config = languages_config.go
}

modules["akinsho/flutter-tools.nvim"] = {
    filetypes = "dart",
    requires = "nvim-lua/plenary.nvim"
}

modules["jose-elias-alvarez/nvim-lsp-ts-utils"] = {
    filetypes = {"javascript", "javascriptreact", "typescript", "typescriptreact"},
    requires = {
        "neovim/nvim-lspconfig",
        "nvim-lua/plenary.nvim"
    }
}

modules["michaelb/sniprun"] = {
    requires = "neovim/nvim-lspconfig",
    run = "bash ./install.sh",
    cmd = {
        "SnipRun",
        "SnipInfo",
        "SnipReset",
        "SnipReplMemoryClean",
        "SnipClose"
    },
    config = languages_config.sniprun
}

modules["ray-x/lsp_signature.nvim"] = {}

modules["nvim-treesitter/nvim-treesitter"] = {
    requires = {
        {
            "nvim-treesitter/playground",
            after = "nvim-treesitter"
        }
    },
    event = {
        "BufRead",
        "BufNewFile"
    },
    run = ":TSUpdate",
    config = languages_config.nvim_treesitter
}

modules["pechorin/any-jump.vim"] = {
    event = {
        "BufRead",
        "BufNewFile"
    },
    config = languages_config.any_jump
}

modules["folke/trouble.nvim"] = {
    requires = "kyazdani42/nvim-web-devicons",
    config = languages_config.trouble
}

modules["simrat39/symbols-outline.nvim"] = {
    cmd = "SymbolsOutline",
    config = languages_config.symbols_outline
}

modules["rcarriga/nvim-dap-ui"] = {
    event = {
        "BufRead",
        "BufNewFile"
    },
    requires = {
        "mfussenegger/nvim-dap",
        "jbyuki/one-small-step-for-vimkind"
    },
    config = languages_config.nvim_dap_ui
}

modules["Pocco81/DAPInstall.nvim"] = {
    event = "BufWinEnter",
    config = languages_config.dapinstall
}

modules["kristijanhusak/vim-dadbod-ui"] = {
    requires = {
        {
            "tpope/vim-dadbod",
            after = "vim-dadbod-ui"
        },
        {
            "kristijanhusak/vim-dadbod-completion",
            after = "vim-dadbod-ui"
        }
    },
    cmd = {
        "DBUIToggle",
        "DBUIAddConnection",
        "DBUI",
        "DBUIFindBuffer",
        "DBUIRenameBuffer"
    },
    config = languages_config.vim_dadbod_ui
}

modules["vuki656/package-info.nvim"] = {
    requires = "MunifTanjim/nui.nvim",
    event = "BufRead package.json",
    config = languages_config.package_info
}

modules["Saecki/crates.nvim"] = {
    requires = "nvim-lua/plenary.nvim",
    event = "BufRead Cargo.toml",
    config = languages_config.crates
}

modules["akinsho/pubspec-assist.nvim"] = {
    requires = "nvim-lua/plenary.nvim",
    event = "BufRead pubspec.yaml",
    rocks = {
        "semver",
        {
            "lyaml",
            server = "http://rocks.moonscript.org"
        }
    },
    config = languages_config.pubspec_assist
}

modules["iamcco/markdown-preview.nvim"] = {
    cmd = {
        "MarkdownPreview"
    },
    run = "cd app && yarn install"
}

-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
-- Completion ---------------------------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

local completion_config = require("modules.global.configs.completion")

modules["hrsh7th/nvim-cmp"] = {
    requires = {
        {
            "hrsh7th/cmp-nvim-lsp"
        },
        {
            "saadparwaiz1/cmp_luasnip",
            after = "nvim-cmp"
        },
        {
            "hrsh7th/cmp-buffer",
            after = "nvim-cmp"
        },
        {
            "hrsh7th/cmp-cmdline",
            after = "nvim-cmp"
        },
        {
            "hrsh7th/cmp-path",
            after = "nvim-cmp"
        },
        {
            "kdheepak/cmp-latex-symbols",
            after = "nvim-cmp"
        }
    },
    event = {
        "BufRead",
        "BufNewFile",
        "InsertEnter"
    },
    config = completion_config.nvim_cmp
}

modules["L3MON4D3/LuaSnip"] = {
    requires = {
        {
            "rafamadriz/friendly-snippets",
            after = "LuaSnip"
        }
    }
}

modules["Neevash/awesome-flutter-snippets"] = {
    filetypes = "dart"
}

modules["mattn/emmet-vim"] = {
    event = "InsertEnter",
    config = completion_config.emmet_vim
}

return modules
