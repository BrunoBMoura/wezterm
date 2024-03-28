local wezterm = require("wezterm")
local act = wezterm.action

local keys = {}

local definitions = {
  { key = "LeftArrow",  mods = 'CTRL|SHIFT', action = act.MoveTabRelative(-1) },
  { key = "RightArrow", mods = 'CTRL|SHIFT', action = act.MoveTabRelative(1) },
  { key = 'H',          mods = 'CTRL|SHIFT', action = act.Search({ Regex = '[a-f0-9]{6,}' }) },
  { key = "-",          mods = "ALT",        action = act.SplitVertical({ domain = "CurrentPaneDomain" }) },
  { key = "/",          mods = "ALT",        action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
  { key = "r",          mods = "ALT",        action = act.ActivatePaneDirection("Next") },
}

for i = 1, 8 do
  table.insert(keys, {
    key = tostring(i),
    mods = 'ALT',
    action = act.ActivateTab(i - 1),
  })
end

for _, key in ipairs(definitions) do
  table.insert(keys, key)
end

return keys
