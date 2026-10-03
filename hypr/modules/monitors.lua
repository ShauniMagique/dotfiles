------------------
---- MONITORS ----
------------------

-- Samgsung
hl.monitor({
    output   = "DP-1",
    mode     = "preferred",
    position = "0x0",
    scale    = "1",
})

-- Blaupunkt
hl.monitor({
    output   = "HDMI-A-1",
    mode     = "preferred",
    position = "-1360x0",
    scale    = "1",
})

-- Built-in
hl.monitor({
    output   = "eDP-1",
    disabled = true,
})