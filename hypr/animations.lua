hl.curve( "workspaceIO", { type = "bezier", points = { {0.43, 0}, {0.51, 1} }})

hl.animation({ leaf = "global",     enabled = true, speed = 9, bezier = "default" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 3, bezier = "workspaceIO", style = "slide" })
