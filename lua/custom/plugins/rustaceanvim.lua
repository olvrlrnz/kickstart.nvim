return {
  {
    'mrcjkb/rustaceanvim',
    version = '^5', -- Recommended
    lazy = false, -- This plugin is already lazy
    init = function()
      vim.g.rustaceanvim = {
        server = {
          on_attach = function()
            vim.keymap.set('n', '<leader>tl', '<Plug>RustHoverAction')
          end,
        },
        default_settings = {
          ['rust-analyzer'] = {
            cargo = {
              allFeatures = true,
            },
          },
        },
      }
    end,
  },
}
