local status, telescope = pcall(require, "telescope")
if (not status) then return end


local fb_actions = require "telescope".extensions.file_browser.actions

telescope.setup {
  extensions = {
    file_browser = {
      theme = "dropdown",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        -- your custom insert mode mappings
        ["i"] = {
          ["<C-w>"] = function() vim.cmd('normal vbd') end,
        },
        ["n"] = {
          -- your custom normal mode mappings
          ["%"] = fb_actions.create,
          ["h"] = fb_actions.goto_parent_dir,
          ["D"] = fb_actions.remove,
          ["R"] = fb_actions.rename,
          ["/"] = function()
            vim.cmd('startinsert')
          end
        },
      },
    },
  },
}

telescope.load_extension("file_browser")
telescope.load_extension('fzy_native')

vim.keymap.set("n", "sf", function()
  telescope.extensions.file_browser.file_browser({
    path = "%:p:h",
    cwd = telescope_buffer_dir(),
    respect_gitignore = false,
    hidden = true,
    grouped = true,
    previewer = false,
    initial_mode = "normal",
      layout_config = { height = 40 },
  })
end)
