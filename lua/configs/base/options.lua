local global = require("core.global")
require("configs.base.ui.fold")

local M = {}

M.global = function()
    vim.opt.shortmess = "ltToOCFI"
    vim.opt.termguicolors = true
    vim.opt.mouse = "nv"
    vim.opt.mousemodel = "extend"
    vim.opt.errorbells = true
    vim.opt.visualbell = true
    vim.opt.hidden = true
    vim.opt.fileformats = "unix,mac,dos"
    vim.opt.magic = true
    vim.opt.virtualedit = "block"
    vim.opt.encoding = "utf-8"
    vim.opt.viewoptions = "folds,cursor,curdir,slash,unix"
    vim.opt.sessionoptions = "curdir,help,tabpages,winsize"
    vim.opt.clipboard = "unnamedplus"
    vim.opt.wildignorecase = true
    vim.opt.wildignore =
        ".git,.hg,.svn,*.pyc,*.o,*.out,*.jpg,*.jpeg,*.png,*.gif,*.zip,**/tmp/**,*.DS_Store,**/node_modules/**,**/bower_modules/**"
    vim.opt.backup = false
    vim.opt.writebackup = false
    vim.opt.swapfile = false
    vim.opt.directory = global.cache_path .. "/swag/"
    vim.opt.undodir = global.cache_path .. "/undo/"
    vim.opt.backupdir = global.cache_path .. "/backup/"
    vim.opt.viewdir = global.cache_path .. "/view/"
    vim.opt.history = 2000
    vim.opt.shada = "!,'300,<50,@100,s10,h"
    vim.opt.backupskip = "/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*,*/shm/*,/private/var/*,.vault.vim"
    vim.opt.smarttab = true
    vim.opt.shiftround = true
    vim.opt.updatetime = 100
    vim.opt.redrawtime = 1500
    vim.opt.ignorecase = true
    vim.opt.smartcase = true
    vim.opt.infercase = true
    vim.opt.incsearch = true
    vim.opt.wrapscan = true
    vim.opt.complete = ".,w,b,k"
    vim.opt.inccommand = "nosplit"
    vim.opt.grepformat = "%f:%l:%c:%m"
    vim.opt.grepprg = "rg --hidden --vimgrep --smart-case --"
    vim.opt.breakat = [[\ \	;:,!?]]
    vim.opt.startofline = false
    vim.opt.whichwrap = "h,l,<,>,[,],~"
    vim.opt.splitbelow = true
    vim.opt.splitright = true
    vim.opt.switchbuf = "useopen"
    vim.opt.backspace = "indent,eol,start"
    vim.opt.diffopt = "filler,iwhite,internal,algorithm:patience"
    vim.opt.completeopt = "menu,menuone,noselect"
    vim.opt.jumpoptions = "stack"
    vim.opt.showmode = false
    vim.opt.scrolloff = 2
    vim.opt.sidescrolloff = 5
    vim.opt.foldlevelstart = 99
    vim.opt.ruler = false
    vim.opt.list = true
    vim.opt.showtabline = 1
    vim.opt.winwidth = 30
    vim.opt.winminwidth = 10
    vim.opt.pumheight = 15
    vim.opt.helpheight = 12
    vim.opt.previewheight = 12
    vim.opt.showcmd = false
    vim.opt.cmdheight = 0
    vim.opt.cmdwinheight = 5
    vim.opt.equalalways = false
    vim.opt.laststatus = 3
    vim.opt.display = "lastline"
    vim.opt.showbreak = "↳  "
    vim.opt.listchars = "tab:  ,nbsp: ,trail: ,space: ,extends:→,precedes:←"
    vim.opt.fillchars = "eob: ,fold:─"
    vim.opt.pumblend = 0
    vim.opt.winblend = 0
    vim.opt.undofile = true
    vim.opt.synmaxcol = 2500
    vim.opt.formatoptions = "1jcroql"
    vim.opt.textwidth = 120
    vim.opt.expandtab = true
    vim.opt.autoindent = true
    vim.opt.tabstop = 4
    vim.opt.shiftwidth = 4
    vim.opt.softtabstop = -1
    vim.opt.breakindentopt = "shift:2,min:20"
    vim.opt.wrap = true
    vim.opt.linebreak = true
    vim.opt.number = true
    vim.opt.relativenumber = true
    vim.opt.foldenable = true
    vim.opt.signcolumn = "no"
    vim.opt.conceallevel = 2
    vim.opt.foldmethod = "indent"
    vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
    vim.opt.foldtext = "v:lua.fold_text()"
    vim.opt.cursorline = true
end

return M
