-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', { desc = 'NeoTree reveal' } },
  },
  opts = {
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
          ['<C-r>'] = function(state)
            local node = state.tree:get_node()
            local old_name = node:get_id()
            vim.ui.input({ prompt = 'New Name: ', default = old_name }, function(new_name)
              if new_name and #new_name > 0 then
                local parent = vim.fn.fnamemodify(old_name, ':h')
                local new_path = parent .. '/' .. new_name
                vim.cmd 'set modifiable'
                os.rename(old_name, new_path)
                require('neo-tree.sources.filesystem').refresh(state)
              end
            end)
          end,
        },
      },
    },
  },
}
