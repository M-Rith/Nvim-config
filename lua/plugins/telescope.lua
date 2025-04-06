return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope-ui-select.nvim',
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")
    local builtin = require("telescope.builtin")

    -- Keymaps
    vim.keymap.set('n', '<C-p>', builtin.find_files, {})
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

    -- Setup
    telescope.setup({
      defaults = {
        mappings = {
          i = {
            ["<C-v>"] = actions.select_vertical,
            ["<C-x>"] = actions.select_horizontal,
            ["<C-t>"] = actions.select_tab,
          },
          n = {
            ["<C-v>"] = actions.select_vertical,
            ["<C-x>"] = actions.select_horizontal,
            ["<C-t>"] = actions.select_tab,
          },
        },
      },
      extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_dropdown({})
        },
      },
    })

    -- Load extensions
    telescope.load_extension("ui-select")
  end,
}



--  quickly finding and selecting files
