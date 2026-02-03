--[[
    XENO SECURE MAIN SCRIPT & HUB
    This file is hosted on GitHub. 
    You can change the KEY or add SCRIPTS here, and it updates for everyone instantly!
]]

-- 1. YOUR SECRET KEY (Change this anytime)
local CURRENT_KEY = "XENO_SECRET_123"

-- 2. YOUR SCRIPTS (Add as many as you want here)
local SCRIPTS = {
      {
            Name = "Example Script",
            Description = "A simple print test",
            Function = function()
                    print("Xeno Hub: Script executed successfully!")
      end
    },
        {
              Name = "Speed Boost",
              Description = "Makes you walk faster",
              Function = function()
                      game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
        end
      },
          -- To add more, just copy the block above and paste it here
    }

    -- [SYSTEM LOGIC - DO NOT EDIT BELOW THIS LINE]
    local CONFIG = {
          Width = 380, Height = 235, MinimizedSize = 50, CornerRadius = 16,
          Colors = {
                Background = Color3.fromRGB(10, 10, 15), Glass = Color3.fromRGB(30, 30, 45),
                Accent = Color3.fromRGB(140, 100, 255), Text = Color3.fromRGB(255, 255, 255),
                SubText = Color3.fromRGB(160, 160, 180)
      }ency = 1
              title.Text = "Xeno Script Hub"
              title.TextColor3 = CONFIG.Colors.Text
              title.Font = Enum.Font.GothamBold
              title.TextSize = 18
              title.TextXAlignment = Enum.TextXAlignment.Left

              local scroll = Instance.new("ScrollingFrame", main)
              scroll.Size = UDim2.new(1, -20, 1, -60)
              scroll.Position = UDim2.new(0, 10, 0, 55)
              scroll.BackgroundTransparency = 1
              scroll.CanvasSize = UDim2.new(0, 0, 0, #SCRIPTS * 50)
              scroll.ScrollBarThickness = 2

              local layout = Instance.new("UIListLayout", scroll)
              layout.Padding = UDim.new(0, 5)

              for _, s in pairs(SCRIPTS) do
                    local btn = Instance.new("TextButton", scroll)
                    btn.Size = UDim2.new(1, -10, 0, 40)
                    btn.BackgroundColor3 = Color3.fromRGB(40, 40, 60)
                    btn.Text = "  " .. s.Name
                    btn.TextColor3 = CONFIG.
    }

    return {
          Key = CURRENT_KEY,
          Init = function()
                local Players = game:GetService("Players")
                local player = Players.LocalPlayer
                local screenGui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
                screenGui.Name = "XenoGUI"
                screenGui.ResetOnSpawn = false

                local main = Instance.new("Frame", screenGui)
                main.Size = UDim2.new(0, CONFIG.Width, 0, CONFIG.Height)
                main.Position = UDim2.new(0.5, -CONFIG.Width/2, 0.5, -CONFIG.Height/2)
                main.BackgroundColor3 = CONFIG.Colors.Glass
                Instance.new("UICorner", main).CornerRadius = UDim.new(0, CONFIG.CornerRadius)

                local header = Instance.new("Frame", main)
                header.Size = UDim2.new(1, 0, 0, 45)
                header.BackgroundColor3 = CONFIG.Colors.Background
                Instance.new("UICorner", header).CornerRadius = UDim.new(0, CONFIG.CornerRadius)

                local title = Instance.new("TextLabel", header)
                title.Size = UDim2.new(1, 0, 1, 0)
                title.Position = UDim2.new(0, 20, 0, 0)
                title.BackgroundTranspar
