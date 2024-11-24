-- Term colors
vim.opt.termguicolors = true

-- Line numbering
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

-- Remove statusline
vim.opt.laststatus = 0
vim.opt.showmode = false

-- Show current command
vim.opt.showcmd = true

-- Make neovim transparent to use terminal colorscheme
vim.cmd [[
  highlight Normal guibg=none
  highlight NonText guibg=none
  highlight Normal ctermbg=none
  highlight NonText ctermbg=none
]]

-- Remove vim intro
vim.opt.shortmess:append("I")
