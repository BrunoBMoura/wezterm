local wezterm = require("wezterm")
local act = wezterm.action

local keys = {}

local definitions = {
  { key = "LeftArrow", mods = 'CTRL|SHIFT', action = act.MoveTabRelative(-1) },
  { key = "RightArrow", mods = 'CTRL|SHIFT', action = act.MoveTabRelative(1) },
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
