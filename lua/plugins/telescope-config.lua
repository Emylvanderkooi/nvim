local actions = require('telescope.actions')
require('telescope').setup {
    defaults = {
	sorting_strategy = 'ascending',

	layout_config = {
		prompt_position = 'top',
	},
	file_sorter =  require'telescope.sorters'.get_fuzzy_file,
	generic_sorter =  require'telescope.sorters'.get_generic_fuzzy_sorter,
    },
    extensions = {
	    fzf = {
		      fuzzy = true,                    -- false will only do exact matching
		      override_generic_sorter = true, -- override the generic sorter
		      override_file_sorter = true,     -- override the file sorter
		      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
						       -- the default case_mode is "smart_case"
		    }
	  }
}

require('telescope').load_extension('fzf')
