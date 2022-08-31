local wezterm = require 'wezterm'
local act = wezterm.action

local keys = {
  { key = 'C', mods = 'CTRL', action = act.CopyTo 'ClipboardAndPrimarySelection' },
  { key = 'V', mods = 'CTRL', action = act.PasteFrom 'Clipboard' },
  { key = 'T', mods = 'CTRL', action = act.SpawnTab 'CurrentPaneDomain' },
  { key = 'N', mods = 'CTRL', action = act.SpawnWindow },
  { key = 'W', mods = 'CTRL', action = act.CloseCurrentTab },
  { key = 'F', mods = 'CTRL', action = act.ToggleFullScreen },
}
for i = 1, 9 do
  -- CTRL + number to activate that tab
  table.insert(keys, {
    key = tostring(i),
    mods = 'CTRL',
    action = act.ActivateTab(i - 1),
  })
end


return {
  font = wezterm.font("FiraCode Nerd Font Mono Retina"),
  font_size = 16.0,
  color_scheme = "Molokai",
  hide_tab_bar_if_only_one_tab = false,
  keys = keys,
}
