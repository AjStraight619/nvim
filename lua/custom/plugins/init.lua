-- -- custom/plugins/init.lua

-- -- Add your plugin configurations here

-- return {
--   {
--     'rose-pine/neovim',
--     name = 'rose-pine',
--     priority = 1000,
--     config = function()
--       vim.cmd.colorscheme 'rose-pine'
--       vim.api.nvim_set_hl(0, 'Normal', { bg = 'NONE' })
--       vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'NONE' })
--     end,
--   },
--   -- Add more plugins here
-- }
-- lua/custom/plugins/init.lua

-- Add your plugin configurations here

return {
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'rose-pine'
      vim.api.nvim_set_hl(0, 'Normal', { bg = 'NONE' })
      vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'NONE' })
    end,
  },
  {
    'folke/tokyonight.nvim',
    config = function()
      vim.cmd.colorscheme 'tokyonight'
      vim.api.nvim_set_hl(0, 'Normal', { bg = 'NONE' })
      vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'NONE' })
    end,
  },
  {
    'gruvbox-community/gruvbox',
    config = function()
      vim.cmd.colorscheme 'gruvbox'
      vim.api.nvim_set_hl(0, 'Normal', { bg = 'NONE' })
      vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'NONE' })
    end,
  },
  {
    'joshdick/onedark.vim',
    config = function()
      vim.cmd.colorscheme 'onedark'
      vim.api.nvim_set_hl(0, 'Normal', { bg = 'NONE' })
      vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'NONE' })
    end,
  },
  {
    'NLKNguyen/papercolor-theme',
    config = function()
      vim.cmd.colorscheme 'PaperColor'
      vim.api.nvim_set_hl(0, 'Normal', { bg = 'NONE' })
      vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'NONE' })
    end,
  },
  {
    'shaunsingh/nord.nvim',
    config = function()
      vim.cmd.colorscheme 'nord'
      vim.api.nvim_set_hl(0, 'Normal', { bg = 'NONE' })
      vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'NONE' })
    end,
  },
  {
    'EdenEast/nightfox.nvim',
    config = function()
      vim.cmd.colorscheme 'nightfox'
      vim.api.nvim_set_hl(0, 'Normal', { bg = 'NONE' })
      vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'NONE' })
    end,
  },
  {
    'sainnhe/everforest',
    config = function()
      vim.cmd.colorscheme 'everforest'
      vim.api.nvim_set_hl(0, 'Normal', { bg = 'NONE' })
      vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'NONE' })
    end,
  },
  {
    'navarasu/onedark.nvim',
    config = function()
      vim.cmd.colorscheme 'onedark'
      vim.api.nvim_set_hl(0, 'Normal', { bg = 'NONE' })
      vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'NONE' })
    end,
  },
  -- Add more colorschemes here as needed
}
