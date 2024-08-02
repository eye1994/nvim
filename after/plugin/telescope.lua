pcall(require('telescope').load_extension, 'fzf')
pcall(require('telescope').load_extension, 'ui-select')

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc='Find files' })
vim.keymap.set('n', '<leader>fg', builtin.git_files, { desc= 'Find files' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc= 'Find buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc= 'Find Help' })

vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc= 'Search using grep' })
vim.keymap.set('n', '<leader>sw', builtin.grep_string, { desc= 'Search word under cursor' })
vim.keymap.set('n', '<leader>sj', builtin.jumplist, { desc= 'Search Jumplist' })
vim.keymap.set('n', '<leader>sr', builtin.registers, { desc='Search Registers'})
vim.keymap.set('n', '<leader>sch', builtin.command_history, { desc= 'Search Command History' })
vim.keymap.set('n', '<leader>ss', builtin.spell_suggest, { desc= 'Search Spell Sugestion' })
vim.keymap.set('n', '<leader>s.', builtin.current_buffer_fuzzy_find, { desc= 'Search current buffer' })
vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc= 'Search Diagnostics' })


vim.keymap.set('n', '<leader>gc', builtin.git_commits, { desc= 'Git Commits' })
vim.keymap.set('n', '<leader>gs', builtin.git_status, { desc= 'Git Status' })

