return {
  'windwp/nvim-ts-autotag',
  event = { 'BufReadPre', 'BufNewFile' },
  config = function()
    require('nvim-ts-autotag').setup {
      enable_close = true, -- Auto close tags
      enable_rename = true, -- Auto rename pairs of tags
      enable_close_on_slash = false, -- Auto close on trailing </
      did_setup = true,
      per_filetype = {
        html = {
          enable_close = false,
        },
      },
    }
    print 'nvim-ts-autotag is loaded and configured'
  end,
}
