return {
    "nvim-tree/nvim-tree.lua",
    enabled = true,
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
        local nvimtree = require("nvim-tree")

        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        nvimtree.setup({
            hijack_directories = {
                enable = false,    -- Set this to false if you want to disable it
                auto_open = false, -- Automatically open the tree when switching to a directory
            },
            view = {
                width = 50,
                relativenumber = true,
                side = "right",
            },
						 -- This is the key setting for automatically revealing the current file
            update_focused_file = {
                enable = true, -- <--- ADD THIS LINE (highlights the current file in the tree)
                update_root = true, -- <--- ADD THIS LINE (changes nvim-tree root if new file is outside current root)
                ignore_list = {},
            },
            -- When nvim-tree is opened, automatically reveal the current file
            -- This applies when you explicitly open nvim-tree (e.g., with <leader>nt)
            open_on_tab = false,
            sort_by = "case_sensitive",
            root_dirs = {}, -- You can specify root directories if needed
            -- change folder arrow icons
            renderer = {
                indent_markers = {
                    enable = true,
                },
                icons = {
                    glyphs = {
                        folder = {
                            -- arrow_closed = "→", -- arrow when folder is closed
                            -- arrow_open = "↓", -- arrow when folder is open
                        },
                    },
                },
            },
            -- disable window_picker for
            -- explorer to work well with
            -- window splits
            actions = {
                open_file = {
                    window_picker = {
                        enable = false,
                    },
                },
            },
            filters = {
                custom = { ".DS_Store" },
            },
            git = {
                ignore = false,
            },
        })

        -- ------------ KEYMAPS
        vim.keymap.set("n", "<leader>nt", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer 
        vim.keymap.set("n", "he", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" })     -- collapse file explorer
        vim.keymap.set("n", "Re", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" })       -- refresh file explorer
    end

}
