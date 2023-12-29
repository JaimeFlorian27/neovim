function rezolve(package, executable)
    rezolver = vim.fn.stdpath('config') .. "/scripts/rezolver"
    return {rezolver, package, executable}
end

function as_str(str_table)
    local result_str = table.concat(str_table, " ")
        return result_str
end

function config_lsp ()
    -- Setup language servers.
    local lspconfig = require('lspconfig')

    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    local on_attach = function(client, bufnr)
      -- Disable hover in favor of pylsp
      client.server_capabilities.hoverProvider = false
    end
    -- lsp servers setup
    lspconfig.pylsp.setup {
        cmd = rezolve("python_dev_utils", "pylsp"),
        capabilities = capabilities,
        configurationSources = {},
            plugins = {
            -- formatter options
            yapf = { enabled = false },
            black = { enabled = false },
            -- linter options
            -- type checker
            pylsp_mypy = { enabled = true },
            -- auto-completion options
            jedi_completion = { fuzzy = true },
        },
    }
    lspconfig.ruff_lsp.setup {
        cmd = rezolve("python_dev_utils", "ruff-lsp"),
        on_attach = on_attach,
        init_options = {
        settings = {
            args = {"--select=ALL", "--ignore=ANN101,S603"},
        }
    }
    }

    lspconfig.tsserver.setup {}
    lspconfig.rust_analyzer.setup {
      -- Server-specific settings. See `:help lspconfig-setup`
      settings = {
        ['rust-analyzer'] = {},
      },
    }
    -- Global mappings.
    -- See `:help vim.diagnostic.*` for documentation on any of the below functions
    vim.keymap.set('n', '<leader>ld', vim.diagnostic.open_float)
    vim.keymap.set('n', '<leader>nd', vim.diagnostic.goto_prev)
    vim.keymap.set('n', '<leader>pd', vim.diagnostic.goto_next)
    vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)

    -- Use LspAttach autocommand to only map the following keys
    -- after the language server attaches to the current buffer
    vim.api.nvim_create_autocmd('LspAttach', {
      group = vim.api.nvim_create_augroup('UserLspConfig', {}),
      callback = function(ev)
        -- Enable completion triggered by <c-x><c-o>
        vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

        -- Buffer local mappings./
        -- See `:help vim.lsp.*` for documentation on any of the below functions
        local opts = { buffer = ev.buf }
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
        vim.keymap.set('n', '<C-s>', vim.lsp.buf.signature_help, opts)
        vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, opts)
        vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, opts)
        vim.keymap.set('n', '<leader>wl', function()
          print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
        end, opts)
        vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, opts)
        vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
        vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts)
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
        vim.keymap.set('n', '<leader>bf', function()
          vim.lsp.buf.format { async = true }
        end
        , opts)

        -- auto format on write
        vim.api.nvim_create_autocmd(
            'BufWritePre', 
            {
                callback = function()
                  if vim.lsp.get_active_clients({bufnr = 0})[1] then
                    vim.lsp.buf.format { async = true }
                  end
                end
            }
        )
      end,
    })
end

return{
    "neovim/nvim-lspconfig",
    lazy=true,
    config=config_lsp,
    event={"BufNew", "BufRead"},
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
    }
}
