local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup(
    {
        { import = "plugins.lsp-&-completion" },
        { import = "plugins.navigation" },
        { import = "plugins.steroids" },
        { import = "plugins.themes" },
		{ import = "plugins.misc" },
		{ import = "plugins.git" },
    },
    {
        checker = {
            enabled = true,
            notify = false,
        },
        change_detection = {
            notify = false,
        },
    }
)
