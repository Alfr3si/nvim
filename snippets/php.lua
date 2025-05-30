local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  s("doc", {
    t({"/**", " * "}),
    i(1, "Descripción"),
    t({"", " *", " * @param "}),
    i(2, "param"),
    t({"", " * @return "}),
    i(3, "tipo"),
    t({"", " */"})
  }),
}
