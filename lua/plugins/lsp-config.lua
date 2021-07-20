require"lspconfig".pylsp.setup {
    filetypes = {"python"},
    settings = {
        configurationSources = {"flake8"},
	formatCommand = {"black"}
    }
}
require'lspconfig'.svelte.setup{}
