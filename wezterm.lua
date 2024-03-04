local wezterm = require("wezterm")

local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- Set the custom key bindings.
config.keys = require("keys")
config.colors = require("kanagawa_dragon")
config.tab_bar_at_bottom = true
config.audible_bell = "Disabled"
config.use_fancy_tab_bar = false
config.enable_scroll_bar = false
config.freetype_load_flags = "NO_HINTING"
config.font_size = 13

config.font = wezterm.font({
  family = "JetBrains Mono",
  harfbuzz_features = { "calt=0", "clig=0", "liga=0" },
  weight = "Medium"
})

config.window_padding = { left = 0, right = 0, top = 0, bottom = 0 }

wezterm.on(
  "format-tab-title",
  -- tab, tabs, panes, config, hove, max_width
  function(tab)
    local pane = tab.active_pane
    local program_name = pane.foreground_process_name
    if program_name == "" then
      -- If no foreground process name is detected, default to 'bash' or another default
      program_name = "bash"
    end

    -- Similar to string.split in other languages.
    local function parse_bin_path(str, delimiter)
      local result = {}
      local from = 1
      local delim_from, delim_to = string.find(str, delimiter, from)
      while delim_from do
        table.insert(result, string.sub(str, from, delim_from-1))
        from = delim_to + 1
        delim_from, delim_to = string.find(str, delimiter, from)
      end
      table.insert(result, string.sub(str, from))
      return result[#result]
    end

    return string.format("[%s] ", parse_bin_path(program_name, "/"))
  end
)

return config
