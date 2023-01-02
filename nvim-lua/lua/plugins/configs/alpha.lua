local M = {}

function M.setup()
  local status_ok, alpha = pcall(require, "alpha")
  if not status_ok then
    return
  end

  local dashboard = require'alpha.themes.startify'
  local handle = io.popen('fortune')
  local fortune = handle:read("*a")
  handle:close()

  dashboard.section.header.val = fortune

  require'alpha'.setup(dashboard.config)

end

return M
