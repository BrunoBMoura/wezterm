local wezterm = require("wezterm")
local act = wezterm.action

local keys = {}

local definitions = {
  { key = "LeftArrow",  mods = 'CTRL|SHIFT', action = act.MoveTabRelative(-1) },
  { key = "RightArrow", mods = 'CTRL|SHIFT', action = act.MoveTabRelative(1) },
  { key = 'H',          mods = 'CTRL|SHIFT', action = act.Search({ Regex = '[a-f0-9]{6,}' }) },
  { key = "/",          mods = "ALT",        action = act.SplitPane({direction = "Right", size = {Percent = 40}}) },
  { key = "-",          mods = "ALT",        action = act.SplitPane({direction = "Down", size = {Percent = 35}})  },
  { key = "r",          mods = "ALT",        action = act.ActivatePaneDirection("Next") },
  { key = "l",          mods = "CTRL|ALT",   action = act.ActivatePaneDirection("Right") },
  { key = "h",          mods = "CTRL|ALT",   action = act.ActivatePaneDirection("Left") },
  { key = "k",          mods = "CTRL|ALT",   action = act.ActivatePaneDirection("Up") },
  { key = "j",          mods = "CTRL|ALT",   action = act.ActivatePaneDirection("Down") },
}

for i = 1, 8 do
  table.insert(keys, {
    key = tostring(i),
    mods = 'ALT',
    action = act.ActivateTab(i-1),
  })
end

for _, key in ipairs(definitions) do
  table.insert(keys, key)
end

return keys
