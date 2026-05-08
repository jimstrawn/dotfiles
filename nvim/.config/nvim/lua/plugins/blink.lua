return {
    'saghen/blink.cmp',
    version = '1.*',
    dependencies = {
        'saghen/blink.lib',
        'rafamadriz/friendly-snippets',
    },
    opts = {
        keymap = {
            ["<tab>"] = {"select_next"},
            ["<s-tab>"] = {"select_prev"},
            ["<cr>"] = {"accept"},
        }
    },
}

