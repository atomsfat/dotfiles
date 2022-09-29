local present, bufferline = pcall(require, "bufferline")

if not present then
  return
end

bufferline.setup {
  options = {
    numbers = 'ordinal',
    diagnostics = "nvim_lsp",
    separator_style = "slant" or "padded_slant",
    show_tab_indicators = true,
    show_buffer_close_icons = true,
    show_close_icon = false,
  },
}

