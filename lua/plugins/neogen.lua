return { 
    "danymat/neogen", 
    dependencies = {"nvim-treesitter/nvim-treesitter", "L3MON4D3/LuaSnip"}, 
    event = {"BufEnter"},
    config =  function()
        require('neogen').setup({ snippet_engine = "luasnip" })
        end,
    init = function()
		local opts = { noremap = true, silent = true }
		vim.api.nvim_set_keymap("n", "<leader>af", 
        ":lua require('neogen').generate()<CR>", opts)
    end
    -- Uncomment next line if you want to follow only stable versions
    -- version = "*" 
}
