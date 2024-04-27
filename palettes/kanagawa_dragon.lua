local colors = {
  background = "#181616",
  ansi = {
    black   = "#16161d",
    red     = "#c4746e",
    green   = "#87a987",
    yellow  = "#c4b28a",
    blue    = "#8ba4b0",
    magenta = "#a292a3",
    cyan    = "#8ea4a2",
    white   = "#c5c9c5",
    grey    = "#282727",
    orange  = "#b6927b",
  },
  brights = {
    black   = "#727169",
    red     = "#E46876",
    green   = "#8A9A7B",
    yellow  = "#E6C384",
    blue    = "#7FB4CA",
    magenta = "#938AA9",
    cyan    = "#7AA89F",
    white   = "#C5C9C5",
    grey    = "#282727",
    orange  = "#b6927b",
  }
}

return {
  tab_bar = {
    background = colors.background,
    active_tab = {
      bg_color = colors.background,
      fg_color = colors.ansi.white,
      intensity = "Bold",
      italic = false,
      strikethrough = false,
    },
    inactive_tab = {
      bg_color = colors.background,
      fg_color = colors.brights.black,
      intensity = "Normal",
      underline = "None",
      italic = false,
      strikethrough = false,
    },
    inactive_tab_hover = {
      bg_color = colors.background,
      fg_color = colors.ansi.white,
      intensity = "Normal",
      underline = "None",
      italic = false,
      strikethrough = false,
    },
    new_tab = {
      bg_color = colors.background,
      fg_color = colors.ansi.black,
      intensity = "Normal",
      underline = "None",
      italic = false,
      strikethrough = false,
    },
  },
  background = colors.background,
  foreground = colors.ansi.white,
  cursor_bg = colors.ansi.orange,
  cursor_fg = colors.background,
  selection_bg = colors.ansi.grey,
  selection_fg = colors.ansi.white,
  ansi = {
    colors.ansi.black,
    colors.ansi.red,
    colors.ansi.green,
    colors.ansi.yellow,
    colors.ansi.blue,
    colors.ansi.magenta,
    colors.ansi.cyan,
    colors.ansi.white,
  },
  brights = {
    colors.brights.black,
    colors.brights.red,
    colors.brights.green,
    colors.brights.yellow,
    colors.brights.blue,
    colors.brights.magenta,
    colors.brights.cyan,
    colors.brights.white,
  }
}