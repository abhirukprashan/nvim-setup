vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set('n', '<C-e>', ':Neotree filesystem reveal right<CR>')
vim.keymap.set('n', '<C-r>', ':Neotree filesystem close<CR>')
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
vim.keymap.set('n', '<leader>h', ':lua require("harpoon.ui").toggle_quick_menu()<CR>')
vim.keymap.set('n', '<leader>a', ':lua require("harpoon.mark").add_file()<CR>')
vim.keymap.set('n', '<leader>hf', ':Telescope harpoon marks<CR>')
