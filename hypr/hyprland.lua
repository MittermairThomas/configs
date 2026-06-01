laptopDP = "eDP-1"
externDP = "HDMI-A-1"

require("binds")
require("autostart")
require("animations")


hl.config({
    general = {
        --No gabs on the side
        gaps_in = 0,
        gaps_out = 0,
        
        --No borders
        border_size = 0,
        
        --No tearing
        allow_tearing = false,

        --default layout style
        layout = "dwindle",
    }, 

    dwindle = {
        --Follow mouse when splitting
        force_split = 0,
        preserve_split = true, --Do not change split
    },

    misc = {
        force_default_wallpaper = 0, --No Anime gorl in background
        disable_hyprland_logo = true, --No hyprland logo
    },

    input = {
        kb_layout = "de",

        follow_mouse = 1, --Follo mouse for focus
        sensitivity = 0, --Defoult sensitivity
    },

    animations = {
        enabled = true,
    },
})

hl.gesture ({
    fingers = 3,
    direction = "horizontal",
    action = "workspace",
})

hl.window_rule ({
    match = { float = true },
    border_size = 1
})

hl.workspace_rule({ workspace = "1",      monitor = laptopDP, default = true })
hl.workspace_rule({ workspace = "r[2-5]", monitor = laptopDP})
hl.workspace_rule({ workspace = "6",      monitor = externDP, default = true })
hl.workspace_rule({ workspace = "r[7-9]", monitor = externDP })
hl.workspace_rule({ workspace = "10",     monitor = externDP })
