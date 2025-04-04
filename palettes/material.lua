local colors = {
  background = "#212121",
  background_alt = "#3F3F3F",
  brights = {
    black   = "#000000",
    red     = "#F07178",
    green   = "#C3E88D",
    yellow  = "#FFCB6B",
    blue    = "#82AAFF",
    magenta = "#C792EA",
    cyan    = "#89DDFF",
    white   = "#EEFFFF",
    grey    = "#717CB4",
    orange  = "#F78C6C",
  },
  ansi = {
    black   = "#000000",
    red     = "#DC6068",
    green   = "#ABCF76",
    yellow  = "#E6B455",
    blue    = "#6E98EB",
    magenta = "#B480D6",
    cyan    = "#71C6E7",
    white   = "#EEFFFF",
    grey    = "#717CB4",
    orange  = "#E2795B",
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
      -- fg_color = colors.brights.grey,
      fg_color = colors.background_alt,
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
