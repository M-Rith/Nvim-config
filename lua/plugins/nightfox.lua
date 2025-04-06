return {
  "EdenEast/nightfox.nvim",
  priority = 1000, -- load before all other plugins
  config = function()
    require("nightfox").setup({
      options = {
        styles = {
          comments = "italic",
          keywords = "bold",
          types = "italic,bold",
        },
      },
    })
    vim.cmd("colorscheme nightfox") -- or "carbonfox", "nordfox", etc.
  end,
}

