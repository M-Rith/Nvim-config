return {
  "supermaven-inc/supermaven-nvim",
  config = function()
    require("supermaven-nvim").setup({
      keymaps = {
        accept_suggestion = "<Tab>", -- Accept suggestion
        clear_suggestion = "<C-]>", -- Clear suggestion
        accept_word = "<C-j>",   -- Accept next word
      },
      ignore_filetypes = {       -- Ignore specific filetypes
        cpp = true,
        -- Add other filetypes as needed
      },
      color = {
        suggestion_color = "#ffffff", -- Set suggestion text color
        cterm = 244,
      },
      log_level = "info",             -- Logging level: "off", "info", "debug"
      disable_inline_completion = false, -- Disable inline completion if using with nvim-cmp
      disable_keymaps = false,        -- Disable built-in keymaps for manual control
    })
  end,
}
