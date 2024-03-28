local wezterm = require("wezterm")
local helpers = require("helpers")

local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

wezterm.on(
  "format-tab-title",
  -- tab, tabs, panes, config, hove, max_width
  function(tab)
    local pane = tab.active_pane
    local fg_process = pane.foreground_process_name
    -- If no foreground process name is detected, default to "bash".
    local program_name = fg_process == "" and "bash" or fg_process
    return string.format("[%s] ", helpers.parse_bin_path(program_name))
  end
)

-- Set the custom key bindings.
config.keys = require("keys")
config.colors = require("kanagawa_dragon")
config.tab_bar_at_bottom = true
config.audible_bell = "Disabled"
config.use_fancy_tab_bar = false
config.enable_scroll_bar = false
config.freetype_load_flags = "NO_HINTING"
config.font_size = 14

config.font = wezterm.font({
  family = "JetBrainsMono",
  harfbuzz_features = { "calt=0", "clig=0", "liga=0" },
  weight = "Medium"
})

-- Set the window padding to zero.
config.window_padding = { left = 0, right = 0, top = 0, bottom = 0 }

-- Do not dim inactive panes.
config.inactive_pane_hsb = {
  saturation = 1.0,
  brightness = 1.0,
}

return config
