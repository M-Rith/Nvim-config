return {
  {
    "nvim-treesitter/nvim-treesitter-context",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("treesitter-context").setup({
        enable = true,           -- Enable the plugin
        max_lines = 0,           -- No limit on the number of lines
        min_window_height = 0,   -- No minimum height for the window
        line_numbers = true,     -- Show line numbers in context window
        multiline_threshold = 20,-- Collapse large contexts into a single line
        trim_scope = 'outer',    -- Trim the context if it's too large
        mode = 'cursor',         -- The context window follows the cursor
        separator = nil,         -- No separator between context and content
        zindex = 20,             -- Set z-index for context window
      })
    end,
  },
}

