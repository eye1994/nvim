local gitsigns = require('gitsigns')

gitsigns.setup {
  signs = {
    add          = { text = '│' },
    change       = { text = '│' },
    delete       = { text = '_' },
    topdelete    = { text = '‾' },
    changedelete = { text = '~' },
    untracked    = { text = '┆' },
  },
}

-- vim.keymap.set('n', '<leader>gb', gitsigns.toggle_current_line_blame, { desc: 'Git blame current line'  })
