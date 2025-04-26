
require("abhiruk.remap")
require("abhiruk.packer")
require("one_monokai").setup({
    transparent = true,
    colors = {},
    highlights = function(colors)
        return {}
    end,
    italics = true,
})
vim.cmd("colorscheme one_monokai")
require("telescope").load_extension('harpoon')
print("hello from abhiruk")
