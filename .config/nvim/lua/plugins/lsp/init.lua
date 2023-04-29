local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("plugins.lsp.configs")
require("plugins.lsp.handlers").setup()
require("plugins.lsp.null-ls")
require'lspconfig'.phpactor.setup{}
