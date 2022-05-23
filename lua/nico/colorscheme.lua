-- local colorscheme = 'industry' -- use this instead if on mac terminal
-- local colorscheme = "tokyonight" -- works great with iterm2

 -- Config
 -- vim.g.tokyonight_style = "night"
 -- vim.g.tokyonight_italic_functions = true
 -- vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }

 -- -- Change the "hint" color to the "orange" color, and make the "error" color bright red
 -- vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }

 -- Load the colorscheme
--  local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

-- if not status_ok then
--   vim.notify("colorscheme " .. colorscheme .. " not found!")
--   return
-- end

-- Github-theme setup -- https://github.com/projekt0n/github-nvim-theme
require('github-theme').setup({
  theme_style = "dark_default",
  function_style = "italic",
  sidebars = {"qf", "vista_kind", "terminal", "packer"},

  -- Change the "hint" color to the "orange" color, and make the "error" color bright red
  -- colors = {hint = "orange", error = "#ff0000"},

  -- Overwrite the highlight groups
  -- overrides = function(c)
  --   return {
  --     htmlTag = {fg = c.red, bg = "#282c34", sp = c.hint, style = "underline"},
  --     DiagnosticHint = {link = "LspDiagnosticsDefaultHint"},
  --     -- this will remove the highlight groups
  --     TSField = {},
  --   }
  -- end
})
