local wezterm = require 'wezterm'
local act = wezterm.action

local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
    config = wezterm.config_builder()
end

-------------------------
--        Theme        --
-------------------------
-- config.color_scheme = 'Catppuccin Frappe'
-- config.color_scheme = 'BlueDolphin'
-- config.color_scheme = 'Tomorrow Night Eighties'
-- config.color_scheme = 'Afterglow'
config.color_scheme = 'tokyonight-storm'
-- config.color_scheme = 'rose-pine'

config.window_decorations = 'RESIZE'
config.hide_tab_bar_if_only_one_tab = true

config.inactive_pane_hsb = {
    saturation = 0.8,
    brightness = 0.7
}

config.use_dead_keys = false
config.scrollback_lines = 5000

config.font = wezterm.font 'Fira Code'
config.warn_about_missing_glyphs = false

-------------------------
--     Keybindings     --
-------------------------
config.keys = {
    -- Window mgmt
    { key = 'n', mods = 'CTRL', action = act.SpawnWindow },
    -- Tab mgmt
    { key = 't', mods = 'CTRL', action = act.SpawnTab 'CurrentPaneDomain' },
    { key = 'w', mods = 'CTRL', action = act.CloseCurrentTab { confirm = true } },
    { key = 'F4', mods = 'CTRL', action = act.CloseCurrentTab { confirm = true } },
    { key = 'Tab', mods = 'CTRL', action = act.ActivateTabRelative(1) },
    { key = 'Tab', mods = 'CTRL|SHIFT', action = act.ActivateTabRelative(-1) },
    -- Pane mgmt
    { key = 'n', mods = 'ALT', action = act.SplitVertical { domain = 'CurrentPaneDomain' } },
    { key = 'm', mods = 'ALT', action = act.SplitHorizontal { domain = 'CurrentPaneDomain' } },
    { key = 'w', mods = 'ALT', action = act.CloseCurrentPane { confirm = true } },
    { key = 'h', mods = 'ALT', action = act.ActivatePaneDirection 'Left' },
    { key = 'j', mods = 'ALT', action = act.ActivatePaneDirection 'Down' },
    { key = 'k', mods = 'ALT', action = act.ActivatePaneDirection 'Up' },
    { key = 'l', mods = 'ALT', action = act.ActivatePaneDirection 'Right' },
}

config.mouse_bindings = {
    { event = { Down = { streak = 1, button = "Right" } }, mods = 'NONE', action = act.PasteFrom 'Clipboard' },
}

return config

