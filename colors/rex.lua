if not require("rex-themes").load() then
  vim.notify("rex-themes: the active Rex theme isn't a built-in one", vim.log.levels.WARN)
end
