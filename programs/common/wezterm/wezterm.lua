local wezterm = require 'wezterm'
local act = wezterm.action

return {
  font = wezterm.font 'FiraCode Nerd Font',
  font_dirs = { '/run/current-system/sw/share/X11/fonts' },
  color_scheme = "Molokai",
  hide_tab_bar_if_only_one_tab = false,
  keys = {
    { key = 'C', mods = 'CTRL', action = act.CopyTo 'ClipboardAndPrimarySelection', },
    { key = 'V', mods = 'CTRL', action = act.PasteFrom 'Clipboard', },
    { key = 'T', mods = 'CTRL', action = act.SpawnTab 'CurrentPaneDomain', },
    { key = 'N', mods = 'CTRL', action = act.SpawnWindow, },
    { key = 'W', mods = 'CTRL', action = act.CloseCurrentTab { confirm = false }, },
    { key = 'F', mods = 'CTRL', action = act.ToggleFullScreen, },
    { key = '1', mods = 'CTRL', action = act.ActivateTab(0), },
    { key = '2', mods = 'CTRL', action = act.ActivateTab(1), },
    { key = '3', mods = 'CTRL', action = act.ActivateTab(2), },
    { key = '4', mods = 'CTRL', action = act.ActivateTab(3), },
    { key = '5', mods = 'CTRL', action = act.ActivateTab(4), },
    { key = '6', mods = 'CTRL', action = act.ActivateTab(5), },
    { key = '7', mods = 'CTRL', action = act.ActivateTab(6), },
    { key = '8', mods = 'CTRL', action = act.ActivateTab(7), },
  },
}
