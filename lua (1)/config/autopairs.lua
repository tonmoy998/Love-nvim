local npairs = require("nvim-autopairs")
local Rule = require("nvim-autopairs.rule")

npairs.setup({})

-- Auto-pair **
npairs.add_rule(Rule("**", "**", "markdown"))

-- Auto-pair ==
npairs.add_rule(Rule("==", "==", "markdown"))

-- Auto-pair ```
npairs.add_rule(Rule("```", "```", "markdown"))
npairs.add_rule(Rule(":::", ":::", "markdown"))
