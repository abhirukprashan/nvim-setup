require("abhiruk.set")
require("abhiruk.remap")
require("abhiruk.packer")
require("one_monokai").setup(
{
        transparent = true,
        colors = {},
        highlights = function(colors)
        return {}
        end,
        italics = true,
})
vim.cmd("colorscheme one_monokai")
vim.cmd("set tabstop=8")
vim.cmd("set shiftwidth=8")

require("telescope").load_extension('harpoon')

