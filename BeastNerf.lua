local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
 
 
local Window = Rayfield:CreateWindow({
    Name = "BeastNerft",
    Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
    LoadingTitle = "Best AimBot,Esp And Movement Script Join Th discord -> discord.gg/Unknown",
    LoadingSubtitle = "by Fuddy",
    Theme = "DarkBlue", -- Check https://docs.sirius.menu/rayfield/configuration/themes
 
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface
 
    ConfigurationSaving = {
       Enabled = true,
       FolderName = beast, -- Create a custom folder for your hub/game
       FileName = "beast script"
    },
 
 
    KeySystem = true, -- Set this to true to use our key system
    KeySettings = {
       Title = "BeastNerft KeySystem",
       Subtitle = "Bruh, It Will Be Free Soon!",
       Note = "Get Key From Discord! (key get chennged every update/bug!)", -- Use this to tell the user how to get a key
       FileName = "Beast key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"https://pastebin.com/raw/tDn3REnB"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 }) 
 
 
 local Aimbot = loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Aimbot-V3/main/src/Aimbot.lua"))()
 local chams = loadstring(game:HttpGet("https://raw.githubusercontent.com/Stratxgy/Roblox-Chams-Highlight/refs/heads/main/Highlight.lua"))()
 local targethud = loadstring(game:HttpGet("https://raw.githubusercontent.com/Stratxgy/Lua-TargetHud/refs/heads/main/targethud.lua"))()
 local speed = loadstring(game:HttpGet("https://raw.githubusercontent.com/Stratxgy/Lua-Speed/refs/heads/main/speed.lua"))()
 
 
 
 
 local aimbotTab = Window:CreateTab("aimbot", "crosshair")
 
 local Section = aimbotTab:CreateSection("Aimbot Settings")
 
 
 local Toggle = aimbotTab:CreateToggle({
    Name = "Aimbot",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        Aimbot.Load()
    end,
 })
 
 local Toggle = aimbotTab:CreateToggle({
    Name = "fov",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        getgenv().ExunysDeveloperAimbot.FOVSettings.Visible = Value
    end,
 })
 
 
 
 local Slider = aimbotTab:CreateSlider({
    Name = "fov",
    Range = {0, 500},
    Increment = 10,
    Suffix = "fov",
    CurrentValue = 50,
    Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        getgenv().ExunysDeveloperAimbot.FOVSettings.Radius = Value
    end,
 })
 
 
 local ColorPicker = aimbotTab:CreateColorPicker({
    Name = "Color fov",
    Color = Color3.fromRGB(255,255,255),
    Flag = "ColorPicker1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        getgenv().ExunysDeveloperAimbot.FOVSettings.Color = Value
    end
})
 
 
 local Keybind = aimbotTab:CreateKeybind({
    Name = "aimbot bind",
    CurrentKeybind = "B",
    HoldToInteract = true,
    Flag = "Keybind1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Keybind)
        getgenv().ExunysDeveloperAimbot.Settings.TriggerKey = Value
    end,
 })
 
 
 
 local visualsTab = Window:CreateTab("Visuals", "eye")
 
 local Section = visualsTab:CreateSection("chams")
 
 
 local Toggle = visualsTab:CreateToggle({
    Name = "Chams",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        getgenv().chams.enabled = Value
    end,
 })
 
 
 local Slider = visualsTab:CreateSlider({
    Name = "cham",
    Range = {0, 1},
    Increment = 1,
    Suffix = "Idk [SOON]",
    CurrentValue = 0,
    Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        getgenv().chams.fillTransparency = Value
    end,
 })
 
 
 local Section = visualsTab:CreateSection("targethud")
 
 
 local Toggle = visualsTab:CreateToggle({
    Name = "Target Hud",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        getgenv().targethud.enabled = Value
    end,
 })
 
 
 local playerTab = Window:CreateTab("Player", "gauge")
 
 local Section = playerTab:CreateSection("PlayerMovement")
 
 
 local Toggle = playerTab:CreateToggle({
    Name = "PlayerMovement",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        getgenv().speed.enabled = Value
    end,
 })
 
 
 local Slider = playerTab:CreateSlider({
    Name = "Speed",
    Range = {0, 1000},
    Increment = 1,
    Suffix = "Speed Amount",
    CurrentValue = 0,
    Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        getgenv().speed.speed = Value
    end,
 })
 
 
 local Keybind = playerTab:CreateKeybind({
    Name = "Speed Bind",
    CurrentKeybind = "N",
    HoldToInteract = false,
    Flag = "Keybind1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Keybind)
        getgenv().speed.keybind = Keybind
    end,
 })
 
 getgenv().speed = {
    enabled = false,       -- Enable or disable the speed boost
    speed = 16,          -- Desired walk speed
    control = false, -- Enable enhanced control
    friction = 2.0,       -- Custom friction factor for more control
    keybind = Enum.KeyCode.KeypadDivide -- yes.. i put it as divide.. on the keypad
}
 
 
 Rayfield:Notify({
    Title = "Loaded Succefully",
    Content = "Thanks For Using Our Script (Report Any Bug In The Discord Server)",
    Duration = 6.5,
    Image = "loader",
 })
