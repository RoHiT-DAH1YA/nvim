# LuaSnip How to write snippets

#### snippets has follwing structure

``` s("trigger", fmt([[ body ]], { nodes })) ```

here body can be multiline string 
note that { } has special meaning - they mean placeholders
so to write { } in languages like cpp you need to double them {{}}

## Note
> luansip configured right now : 
> make file as abc.lua
> and the snippets defined in those will be for the files of the following extension : 'abc'



nodes - what to go in the placeholders

## file_Syntax

```lua
return {
    ...1st,
    ...2nd
}```

example 
-- Simple for loop
```lua
s("fori", fmt([[
    for (int {} = 0; {} < {}; ++{}) {{
        {}
    }}
]], {
    i(1, "i"), -- Placeholder 1, default text is "i"
    i(2, "i"), -- Placeholder 2
    i(3, "n"), -- Placeholder 3
    i(4, "i"), -- Placeholder 4
    i(0)       -- i(0) is always the FINAL jump point (where you end up)
})),
```

# ================= From Youtube =================

### Defining all snippets in same file NOT LUASNIP

```lua
local ls = require "luasnip"

ls.snippets = {
    all = {
    },
    lua = {
    },
    cpp = {
    },
}
```

## ls.s

- simple way to create snippet
- take follwing arguments
    1. trigger
    2. snippet-text : ways ti create
        1. table of nodes
        2. fmt (format string)
            - text
            - table of nodes

> Note: fmt text has special meaning for { and }. `{}` is used for defining a place for node
> So to type literal { use {{ and for literal } use }}







































