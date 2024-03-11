local nvim_treesitter = require("nvim-treesitter")
local highlight = require("nvim-treesitter.highlight")
local parsers = require("nvim-treesitter.parsers")
-- local queries = require("nvim-treesitter.query")

local M = {}

function M.init()
  local parser_config = parsers.get_parser_configs()

  parser_config.juice = {
    install_info = {
      url = "https://github.com/juicelang/tree-sitter-juice.git",
      files = { "src/parser.c" },
      branch = "main",
      generate_requires_npm = false,
      requires_generate_from_grammar = false,
    }
  }

  nvim_treesitter.define_modules {
    juice = {
      enable = true,
      module_path = "juice.internal",
      is_supported = function(lang)
        return lang == "juice"
      end,
    }
  }
end

return M
