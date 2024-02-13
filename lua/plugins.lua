return {
  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',
  { -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help indent_blankline.txt`
    opts = {
      char = '┊',
      show_trailing_blankline_indent = false,
    },
  },
  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim', opts = {} },
-- vim-matchup for higlighting
  {
    "andymass/vim-matchup",
    lazy = false,
    enabled = true,
    init = function()
      vim.g.matchup_matchparen_offscreen = { method = "popup" }
    end,
  },
-- tmux navigation
  {     "aserowy/tmux.nvim",
    config = function() return require("tmux").setup() end
  },
  -- Glow
  {"ellisonleao/glow.nvim", config = true, cmd = "Glow"}
}
