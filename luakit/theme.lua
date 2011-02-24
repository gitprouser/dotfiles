------------------------------
-- cottonmouse luakit theme --
------------------------------

local theme = {}

-- Default settings
theme.font = "Fixed 9"
theme.fg   = "#191919"
theme.bg   = "#eeeeee"

-- General colors
theme.success_fg = "#d680c5"
theme.loaded_fg = "#98a7b2"
theme.error_fg = "#39d3c9"
theme.error_bg = "#232323"

-- Warning colors
theme.warning_fg = "#c5bb5f"
theme.warning_bg = "#191919"

-- Notification colors
theme.notif_fg = "#393939"
theme.notif_bg = "#b4aeba"

-- Menu colors
theme.menu_fg                 = "#848484"
theme.menu_bg                 = "#191919"
theme.menu_selected_fg        = "#191919"
theme.menu_selected_bg        = "#887b8b"
theme.menu_title_bg           = "#313131"
theme.menu_primary_title_fg   = "#c5c5c5"
theme.menu_secondary_title_fg = "#98a7b2"

-- Proxy manager
theme.proxy_active_menu_fg    = '#232323'
theme.proxy_active_menu_bg    = '#98a7b2'
theme.proxy_inactive_menu_fg  = '#787878'
theme.proxy_inactive_menu_bg  = '#191919'

-- Statusbar specific [dark]
theme.sbar_fg         = "#aaaaaa"
theme.sbar_bg         = "#191919"
-- Statusbar specific [bright]
--theme.sbar_fg         = "#464646"
--theme.sbar_bg         = "#ece8ed"

-- Downloadbar specific
theme.dbar_fg         = "#989898"
theme.dbar_bg         = "#191919"
theme.dbar_error_fg   = "#8eb8c3"

-- Input bar specific [dark]
--theme.ibar_fg         = "#aaaaaa"
--theme.ibar_bg         = "#111111"
-- Input bar specific [bright]
theme.ibar_fg         = "#232323"
theme.ibar_bg         = "#ccc8bf"

-- Tab label
theme.tab_fg          = "#72727d"
theme.tab_bg          = "#232323"
theme.tab_ntheme      = "#957f8f"
theme.selected_fg     = "#343434"
theme.selected_bg     = "#fefefe"
theme.selected_ntheme = "#b638b7"
theme.loading_fg      = "#98a7b2"
theme.loading_bg      = "#898989"

-- Trusted/untrusted ssl colors
theme.trust_fg        = "#98a7b2"
theme.notrust_fg      = "#d680c5"

return theme
-- vim: et:sw=4:ts=8:sts=4:tw=80