-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional optio:require(:)ns here
--
vim.opt.exrc = true -- allow local .nvim.lua .vimrc .exrc files
vim.opt.secure = true -- disable shell and write commands in local .nvim.lua .vimrc .exrc files
-- Mobile-focused UX defaults
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakindent = true
vim.opt.showbreak = "↪ "

-- Keep the viewport stable on small screens
vim.opt.scrolloff = 2
vim.opt.sidescrolloff = 2

-- Numbers: on narrow screens, relative numbers often feel noisy
vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.signcolumn = "yes:1" -- don't reserve a fat sign column

-- Make splits behave predictably on a phone
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Faster/cleaner UI
vim.opt.cmdheight = 1
vim.opt.pumheight = 8 -- completion menu height (small!)
vim.opt.updatetime = 200
vim.opt.timeoutlen = 400

-- Good for touch / less accidental mode switches
vim.opt.mouse = "a"

-- Reduce startup noise
vim.opt.shortmess:append("c")
vim.opt.shortmess:append("I")

