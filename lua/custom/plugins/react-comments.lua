-- custom/comment-plugins.lua

return {
  -- Commenting and context-aware comment strings
  {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup {
        -- Required fields with default values
        padding = true,
        ignore = '^$',
        sticky = true,
        mappings = {
          basic = true,
          extra = true,
          extended = false,
        },
        toggler = {
          line = 'gcc',
          block = 'gbc',
        },
        opleader = {
          line = 'gc',
          block = 'gb',
        },
        extra = {
          above = 'gcO',
          below = 'gco',
          eol = 'gcA',
        },
        pre_hook = function(ctx)
          local U = require 'Comment.utils'
          local location = nil
          if ctx.ctype == U.ctype.blockwise then
            location = require('ts_context_commentstring.utils').get_cursor_location()
          elseif ctx.cmotion == U.cmotion.v or ctx.cmotion == U.cmotion.V then
            location = require('ts_context_commentstring.utils').get_visual_start_location()
          end
          return require('ts_context_commentstring.internal').calculate_commentstring {
            key = ctx.ctype == U.ctype.linewise and '__default' or '__multiline',
            location = location,
          }
        end,
        post_hook = function(ctx)
          -- You can provide an empty function or your own post-hook logic here
        end,
      }
    end,
  },
  -- Context-aware comment string for JSX/TSX
  { 'JoosepAlviste/nvim-ts-context-commentstring' },
}
