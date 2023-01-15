vim.cmd([[
try
  colorscheme kanagawa 
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]])

require("leaf").setup({theme = "dark"})