local mainMod = "SUPER"

--Close Window
hl.bind(mainMod .. " + K", hl.dsp.window.close())

--Launche Stuff
hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd("kitty"))
hl.bind(mainMod .. " + TAB"   , hl.dsp.exec_cmd("rofi -show window"))
hl.bind(mainMod .. " + P"     , hl.dsp.exec_cmd("rofi -show drun"))
hl.bind(mainMod .. " + B"     , hl.dsp.exec_cmd("pkill waybar || waybar"))

--Log out
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("hyprlock"))

--Audio
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 0%"))
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"))
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"))

--Visuals
hl.bind("XF86MOnBrightnessDown", hl.dsp.exec_cmd("brightnessctl -d amdgpu_bl1 set 5%-"))
hl.bind("XF86MOnBrightnessUp",   hl.dsp.exec_cmd("brightnessctl -d amdgpu_bl1 set +5%"))

--Focus
hl.bind(mainMod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down",  hl.dsp.focus({ direction = "down" }))

--Take screenshots
hl.bind(mainMod .. " + S",       hl.dsp.exec_cmd("hyprshot -m region")) --Screenshot a region
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_cmd("hyprshot -m window")) --Screenshot a window
hl.bind(mainMod .. " + ALT + S",   hl.dsp.exec_cmd("hyprshot -m output")) --Screenshot a desktop

--Switch to, or move window to workspace
for i = 1, 10 do
    local mnt
    local key = i % 10 --Maps 10 to 0

    if i <= 5 then
        mnt = laptopDP
    else
        mnt = externDP
    end

    hl.bind(mainMod .. " + " .. key, function()
        hl.dispatch(hl.dsp.focus({ monitor = mnt }))
        hl.dispatch(hl.dsp.focus({ workspace = i }))
    end)

    hl.bind(mainMod .. " + SHIFT + " .. key, function()
        hl.dispatch(hl.dsp.window.move({ monitor = mnt }))
        hl.dispatch(hl.dsp.window.move({ workspace = i }))
    end)
end

--Switch/move Window workspace up/down
hl.bind(mainMod .. " + Q", function()
    local mnt
    local currentWorkspace = hl.get_active_workspace().id

    if currentWorkspace <= 6 then
        mnt = laptopDP
    else
        mnt = externDP
    end

    if currentWorkspace > 1 then
        hl.dispatch(hl.dsp.focus({ monitor = mnt }))
        hl.dispatch(hl.dsp.focus({ workspace = currentWorkspace - 1 }))
    end 
end)

hl.bind(mainMod .. " + W", function()
    local mnt
    local currentWorkspace = hl.get_active_workspace().id

    if currentWorkspace <= 4 then
        mnt = laptopDP
    else
        mnt = externDP
    end   

    if currentWorkspace < 10 then
        hl.dispatch(hl.dsp.focus({ monitor = mnt }))
        hl.dispatch(hl.dsp.focus({ workspace = currentWorkspace + 1 }))
    end
end)

hl.bind(mainMod .. " + SHIFT + Q", function()
    local mnt
    local currentWorkspace = hl.get_active_workspace().id
    
    if currentWorkspace <= 6 then
        mnt = laptopDP
    else
        mnt = externDP
    end   

    if currentWorkspace > 1 then
        hl.dispatch(hl.dsp.window.move({ monitor = mnt }))
        hl.dispatch(hl.dsp.window.move({ workspace = currentWorkspace - 1 }))
    end
end)

hl.bind(mainMod .. " + SHIFT + W", function()
    local mnt
    local currentWorkspace = hl.get_active_workspace().id

    if currentWorkspace <= 4 then
        mnt = laptopDP
    else
        mnt = externDP
    end   

    if currentWorkspace < 10 then
        hl.dispatch(hl.dsp.window.move({ monitor = mnt }))
        hl.dispatch(hl.dsp.window.move({ workspace = currentWorkspace + 1 }))
    end
end)

--Floating Windows
--Floating toggeln
hl.bind(mainMod .. " + F", function() 
    hl.dispatch(hl.dsp.window.float({ action = "toggle" }))
    
    local window = hl.get_active_window()
    if window ~= nil and window.floating then
        hl.dispatch(hl.dsp.window.resize({ x = 800, y = 600 }))
    end
end)

--Moving
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })
