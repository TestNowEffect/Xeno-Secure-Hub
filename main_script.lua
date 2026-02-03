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
                Name = "ATM Auto-Rob Hub",
                Description = "Advanced ATM Robbery and Auto-Sell script",
                Function = function()
                            -- [PASTED CONTENT FROM USER START]
                            local Players = game:GetService("Players")
                            local RunService = game:GetService("RunService")
                            local TweenService = game:GetService("TweenService")
                            local UserInputService = game:GetService("UserInputService")

                            local plr = Players.LocalPlayer
                            local PlrGui = plr:WaitForChild("PlayerGui")
                            local char = plr.Character or plr.CharacterAdded:Wait()
                            local camera = workspace.CurrentCamera

                            -- Values
                            local autoRobActive = false
                            local tracking = true
                            local finding = false
                            local autoSellActive = false
                            local autoSellTime = 5   local function GoToSeller()
                                    if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
                                            plr.Character:PivotTo(sellCFrame)
                    end
                end

                            local function AutoSellWhenNoAtms()
                                    if not autoRobActive then return end
                                    GoToSeller()
                                    task.wait(2)
                                    GoToSeller()
                                    task.wait(2)
                                    while autoRobActive do
                                            local atm = ChooseAtmSpawner()
                                            if atm then
                                                    finding = true
                                                    tracking = false
                                                    return
                        end
                                            task.wait(1)
                    end
                end

                            local function RobATM()
                                    if tracking and autoRobActive and not isPostRobberyWaiting then
                                            tracking = false
                                            local ATM = ChooseAtmSpawner()
                                            if not ATM then
                                                    finding =
                            local sellCFrame = CFrame.new(-2544, 19, 4030) 
                            local postRobberyCooldown = 5.3 
                            local isPostRobberyWaiting = false
                            local countdownActive = false

                            -- Functions
                            local function CompleteProximity(proximityPrompt)
                                    if not proximityPrompt then return end
                                    proximityPrompt:InputHoldBegin()
                                    task.wait(proximityPrompt.HoldDuration)
                                    proximityPrompt:InputHoldEnd()
                end

                            local function ChooseAtmSpawner()
                                    for _, ATM in workspace:GetDescendants() do
                                            if ATM:GetAttribute("ComponentServerId") and ATM.Name == "CriminalATMSpawner" then
                                                    local CrimATM = ATM:FindFirstChild("CriminalATM")
                                                    if CrimATM and CrimATM:GetAttribute("State") ~= "Busted" then
                                                            return CrimATM
                            end
                        end
                    end
                                    return nil
                end

                          
