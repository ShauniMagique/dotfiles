-------------------
---- AUTOSTART ----
-------------------


 hl.on("hyprland.start", function () 
   hl.exec_cmd("waybar & swaync")
   hl.exec_cmd("swaybg -i .config/wallpapers/lain.jpg -m fit")
   hl.exec_cmd("easyeffects")
 end)
