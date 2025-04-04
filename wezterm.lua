local wezterm = require("wezterm")
local helpers = require("helpers")

local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- Set the custom key bindings.
config.keys = require("keys")
config.colors = require("palettes.kanagawa_dragon")

wezterm.on(
  "format-tab-title",
  -- tab, tabs, panes, config, hove, max_width
  function(tab)
    local idx = tab.tab_index
    local fg_process = tab.active_pane.foreground_process_name
    local cwd = tostring(tab.active_pane.current_working_dir)

    -- If no foreground process name is detected, default to "bash".
    fg_process = fg_process == "" and "bash" or fg_process
    -- If the current working directory is empty, default to "<unknown>".
    cwd = cwd == "" and "<unknown>" or cwd

    return string.format(
      "|%s:%s, at %s ", -- "[%s:%s, at %s] ",
      tonumber(idx) + 1,
      helpers.parse_bin_path(fg_process),
      helpers.parse_cwd(cwd)
    )
  end
)

config.tab_bar_at_bottom = true
config.audible_bell = "Disabled"
config.use_fancy_tab_bar = false
config.enable_scroll_bar = false
config.freetype_load_flags = "NO_HINTING"
config.font_size = 13
config.tab_max_width = 200
-- config.front_end = "Software"

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
