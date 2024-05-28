local associations = {
  ["*.swcrc"] = "json",
  [".env*"] = "sh"
}

for k, v in pairs(associations) do
  vim.cmd("autocmd BufRead,BufNewFile " .. k .. " set filetype=" .. v)
end
