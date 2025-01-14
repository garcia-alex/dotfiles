require("obsidian").setup({
	workspaces = {
		{
			name = "docs",
			path = "/Users/alessandrogarcia/Documents/Obsidian/docs",
		},
	},
	completion = {
		nvim_cmp = true,
		min_chars = 2,
		-- new_notes_location = "current_dir",  -- deprecated
		-- prepend_note_id = true,  -- deprecated
	},
	mappings = {
		-- Obsidian follow
		["<leader>of"] = {
			action = function()
				return require("obsidian").util.gf_passthrough()
			end,
			opts = { noremap = false, expr = true, buffer = true },
		},
	},
	-- Note: "<Ctrl>o" then allows you to go back.

	note_frontmatter_func = function(note)
		local out = { id = note.id, aliases = note.aliases, tags = note.tags, category = "" }

		if note.metadata ~= nil and not vim.tbl_isempty(note.metadata) then
			for k, v in pairs(note.metadata) do
				out[k] = v
			end
		end
		return out
	end,

	wiki_link_func = function(opts)
		if opts.id == nil then
			return string.format("[[%s]]", opts.label)
		elseif opts.label ~= opts.id then
			return string.format("[[%s|%s]]", opts.id, opts.label)
		else
			return string.format("[[%s]]", opts.id)
		end
	end,
	templates = {
		subdir = "templates",
		date_format = "%Y-%m-%d-%a",
		time_format = "%H:%M",
		tags = "",
	},
})
