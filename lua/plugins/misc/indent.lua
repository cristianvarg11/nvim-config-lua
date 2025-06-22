return {
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        ---@module "ibl"
        ---@type ibl.config
        opts = {
            -- Disable indent-blankline for specific filetypes
            exclude = {
                filetypes = {
                    "dashboard",
                    "NvimTree",
                    "lazy",      -- For lazy.nvim plugin manager
                    "mason",     -- For mason.nvim
                    "toggleterm",-- For toggleterm.nvim
                    "help",
                    "alpha",     -- Another common startup screen plugin
                    "undotree",
                    "qf",
                    "vista_kind",
                    "packer",
                },
            },
        },
    }
}
