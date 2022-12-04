require('fiqryq.base')
require('fiqryq.highlights')
require('fiqryq.maps')
require('fiqryq.plugins')
require'lspconfig'.pyright.setup{}
require("nvim-lsp-installer").setup {}

local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
  require('fiqryq.macos')
end
if is_win then
  require('fiqryq.windows')
end
