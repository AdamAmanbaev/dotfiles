-- Enable mouse
vim.o.mouse = "a"

-- Tab settings
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Indendation
vim.opt.smartindent = true
vim.opt.cino = 'n-sg0'

-- Disable backups and swaps
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false

-- Persistent undos
vim.opt.undodir = os.getenv("HOME") .. "/.nvim/undodir"
vim.opt.undofile = true

-- Reload files
vim.opt.autoread = true

-- Searching
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Increase edit history
vim.opt.history = 1000

-- Reload files when changed outside
vim.opt.autoread = true

-- Windows clipboard
local clip = '/mnt/c/Windows/System32/clip.exe'

if vim.fn.executable(clip) == 1 then
    vim.api.nvim_create_augroup('WSLYank', { clear = true })
    vim.api.nvim_create_autocmd('TextYankPost', {
        group = 'WSLYank',
        callback = function()
            if vim.v.event.operator == 'y' then
                vim.fn.system(clip, vim.fn.getreg('"'))
            end
        end,
    })
end
