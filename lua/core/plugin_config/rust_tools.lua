local rt = require("rust-tools")
local mason_registry = require("mason-registry")

local codelldb = mason_registry.get_package("codelldb")
local extension_path = codelldb:get_install_path() .. "/extension/"
local codelldb_path = extension_path .. "adapter/codelldb"
local liblldb_path = extension_path .. "lldb/lib/liblldb.so"
local  adp = require("rust-tools.dap").get_codelldb_adapter(codelldb_path, liblldb_path)

adp.rust = {
  type = "server",
  port = "8080",
  host = "127.0.0.1",
  executable = {
    command = codelldb_path,
    args = { "--liblldb", liblldb_path, "--port", "8080" },
  },
}
rt.setup({
  dap = {
    adapter = adp,
  },
  server = {
    capabilities = require("cmp_nvim_lsp").default_capabilities(),
    on_attach = function(_, bufnr)
      vim.keymap.set("n", "<Leader>k", rt.hover_actions.hover_actions, { buffer = bufnr })
      vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
    end,
  },
  tools = {
    hover_actions = {
      auto_focus = true,
    },
  },
})
