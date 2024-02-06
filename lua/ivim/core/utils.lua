local M = {}

M.shell_call = function(args)
  local output = vim.fn.system(args)
  assert(vim.v.shell_error == 0, "External process failed with exit code: " .. vim.v.shell_error .. "\n" .. output)
  return output
end

M.get_system_color_scheme = function()
  result = M.shell_call({
    "dbus-send", "--session", "--print-reply=literal", "--reply-timeout=1000",
    "--dest=org.freedesktop.portal.Desktop",
    "/org/freedesktop/portal/desktop",
    "org.freedesktop.portal.Settings.Read",
    "string:org.freedesktop.appearance",
    "string:color-scheme"
  })

  local color_scheme = "light"
  if string.match(result, "uint32 1") ~= nil then
    color_scheme = "dark"
  end
  return color_scheme
end


return M
