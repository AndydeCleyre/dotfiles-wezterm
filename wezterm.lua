local wezterm = require "wezterm"

local scheme_bases = {
  "Doom Peacock",
  "kanagawabones",
  "One Dark (Gogh)",
  "Popping and Locking",
  "Red Planet",
}
local scheme_base = scheme_bases[math.random(1, #scheme_bases)]
local scheme = wezterm.color.get_builtin_schemes()[scheme_base]

scheme.background = "#16161d"
scheme.ansi[8] = "#dea050"
scheme.brights[8] = "#ffa52f"
scheme.cursor_bg = "#ff8bf0"
return {
  color_schemes = { ["ConfiguredColors"] = scheme },
  color_scheme = "ConfiguredColors",

  window_background_opacity = 1,
  default_cursor_style = "BlinkingBar",
  animation_fps = 30,
  adjust_window_size_when_changing_font_size = false,
  canonicalize_pasted_newlines = "LineFeed",
  check_for_updates = false,
  custom_block_glyphs = false,
  disable_default_key_bindings = true,
  enable_kitty_graphics = true,
  enable_kitty_keyboard = true,
  enable_tab_bar = false,
  freetype_load_flags = "NO_HINTING",

  font_size = 18,
  font = wezterm.font_with_fallback({
    "Andysevka Term",
    "0xProto",
    "Maple Mono",
    "Sudo",
    "Fantasque Sans Mono",
    "Ubuntu Mono",
    "Comic Mono",
    "Share Tech Mono",
    "Atkinson Hyperlegible Mono",
    "Symbols Nerd Font Mono",
    "Symbols Nerd Font",
    "NanumGothicCoding",
    "Fluent Emoji Color",
    "Fluent Emoji Flat",
    "Twemoji",
    "Twitter Color Emoji",
    "SerenityOS Emoji",
    "OpenMoji Color",
    "JoyPixels",
  }),
  font_rules = {
  },
  harfbuzz_features = {
    "clig",
    "frac",
    "kern",
    "liga",
    "thnd",
    "txtr",
  },

  keys = {
    { key = "=", mods = "CTRL", action = wezterm.action.IncreaseFontSize },
    { key = "-", mods = "CTRL", action = wezterm.action.DecreaseFontSize },
    { key = "0", mods = "CTRL", action = wezterm.action.ResetFontSize },
    { key = "v", mods = "SHIFT|CTRL", action = wezterm.action.PasteFrom "Clipboard" },
  },
}
