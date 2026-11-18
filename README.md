# nvim-rex-themes

A Neovim colorscheme that matches the built-in theme active in [Rex](https://www.superlogical.com/rex).

The 41 built-in Rex palettes are copied into `lua/rex-themes/palettes.lua`. The plugin reads the active theme ID from Rex's preferences (`defaults read com.superlogical.rex`), using the light or dark theme depending on `'background'`, and builds highlights from that palette.

It re-checks when `'background'` changes (Rex reports light/dark switches to Neovim) and when Neovim regains focus, so switching themes in Rex carries over.

If Neovim isn't running inside Rex, isn't on macOS, or the Rex theme is a custom one, nothing is changed unless you pass a fallback.

## Setup

```lua
{
  "brundagejoe/nvim-rex-themes",
  lazy = false,
  priority = 1000,
  config = function()
    require("rex-themes").setup({
      fallback = function()
        vim.cmd.colorscheme("habamax")
      end,
    })
  end,
}
```

`:colorscheme rex` loads the matching theme once without the autocommands.
