-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()
local act = wezterm.action

-- Config stuff
config.font_size = 15
config.color_scheme = 'Dracula (Official)'
config.font = wezterm.font('Comic Code Ligatures', { weight = 'Bold' })
config.send_composed_key_when_left_alt_is_pressed = true
config.send_composed_key_when_right_alt_is_pressed = false

config.keys = {
  {
    key = 'w',
    mods = 'ALT',
    action = wezterm.action.CloseCurrentPane { confirm = false },
  },
  {
    key = '"',
    mods = 'SHIFT|ALT',
    action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
  },
  {
    key = '%',
    mods = 'SHIFT|ALT',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
  {
    key = "RightArrow",
    mods = "OPT",
    action = act.SendString("\x1bf"),
  },
  {
    key = "LeftArrow",
    mods = "OPT",
    action = act.SendString("\x1bb"),
  },
  {
    key = 'LeftArrow',
    mods = 'SHIFT',
    action = act.AdjustPaneSize { 'Left', 5 },
  },
  {
    key = 'DownArrow',
    mods = 'SHIFT',
    action = act.AdjustPaneSize { 'Down', 5 },
  },
  { key = 'UpArrow', mods = 'SHIFT', action = act.AdjustPaneSize { 'Up', 5 } },
  {
    key = 'RightArrow',
    mods = 'SHIFT',
    action = act.AdjustPaneSize { 'Right', 5 },
  },
}


-- Finally, return the configuration to wezterm:
return config
