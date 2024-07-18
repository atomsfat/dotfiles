local present, blankline= pcall(require, "ibl")

if not present then
  return
end

local highlight = {
    "CursorColumn",
    "Whitespace",
}

local options = {
  exclude = {
    filetypes = {
    "help",
    "terminal",
    "alpha",
    "packer",
    "lspinfo",
    "TelescopePrompt",
    "TelescopeResults",
    "mason",

    },
    buftypes = {
      "terminal"
    }
  },
  indent = { highlight = highlight, char = "" },
    whitespace = {
        highlight = highlight,
        remove_blankline_trail = false,
    },
    scope = { enabled = false },
}


blankline.setup(options)
