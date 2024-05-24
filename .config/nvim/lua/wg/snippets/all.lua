local ls = require("luasnip")

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

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

ls.add_snippets("all", {
  docs
})
