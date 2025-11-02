local capabilities = require('cmp_nvim_lsp').default_capabilities()
vim.lsp.enable("lua_ls",{capabilities=capabilities})
vim.lsp.enable("angularls",{capabilities=capabilities})

local severity = vim.diagnostic.severity
vim. diagnostic.config({
      signs = {
      text = {
          [severity.ERROR] ="",
          [severity.WARN] = "",
          [severity. HINT] ="",
          [severity.INFO] = "",
            },
          },
virtual_text = {
    severity = { min = vim.diagnostic.severity.WARN }, -- only show Warn and above
  },
  underline = {
    severity = { min = vim.diagnostic.severity.WARN },  -- disable hint underline
  },
        })

