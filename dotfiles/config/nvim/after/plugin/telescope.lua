local telescope = require('telescope')

telescope.setup {
    defaults = {
        file_ignore_patterns = { ".git/" },
    },
    extensions = {
        fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = "smart_case",
        },
    },
}

telescope.load_extension('fzf')
telescope.load_extension('harpoon')
