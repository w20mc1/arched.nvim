return {
    'nvim-lualine/lualine.nvim',
    dependencies = {
	    'dokwork/lualine-ex',
	    'nvim-lua/plenary.nvim',
	    'nvim-tree/nvim-web-devicons' 
    },
    config = function()
        require "lualine".setup {
            options = {
                component_separators = '|',
                section_separators = { left = '', right = '' },
            },
            sections = {
                lualine_a = { { 'mode', separator = { left = '' }, right_padding = 2 } },
                lualine_b = { 'filename', 'branch', 'ex.lsp.single' },
                lualine_c = {
                '%=', --[[ add your center compoentnts here in place of this comment ]]
                },
                lualine_x = {},
                lualine_y = { 'filetype', 'progress' },
                lualine_z = {
                { 'location', separator = { right = '' }, left_padding = 2 },
                },
            },
            inactive_sections = {
                lualine_a = { 'filename' },
                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = {},
                lualine_z = { 'location' },
            },
            tabline = {},
            extensions = { "neo-tree" },
        }
    end
}
