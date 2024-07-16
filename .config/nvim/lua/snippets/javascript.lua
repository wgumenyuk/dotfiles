local ls = require("luasnip")

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

local languages = {
  "javascript",
  "typescript",
  "javascriptreact",
  "typescriptreact",
  "svelte"
}

local docs = s("docs", {
  t({
    "/**",
    "\t"
  }),
  i(1, ""),
  t({
    "",
    "*/"
  })
})

for _, language in ipairs(languages) do
  ls.add_snippets(language, {
    docs
  })
end
