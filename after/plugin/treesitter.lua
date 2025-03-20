require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = { "typescript","javascript","python","rust","tsx","c", "lua", "vim","css","html","sql"},
  sync_install = false,

  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
