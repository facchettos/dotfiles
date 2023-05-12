require('lualine').setup{
    options = {
        theme = 'molokai' ,
        component_separators = {'|','|'},
        section_separators = {' ', ' '},
    },
}

vim.opt.termguicolors = true
require("bufferline").setup{}


if vim.g.started_by_firenvim == true then
  vim.o.laststatus = 0
  vim.opt.showtabline = 0
  vim.g.firenvim_config.localSettings['.*'] = { takeover = 'never' }
else
  vim.o.laststatus = 2
end
