local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

if game.PlaceId == 17720162456 then
    player.Character.HumanoidRootPart.CFrame = CFrame.new(-408.0579833984375, 16.933761596679688, 2963.642578125)
    humanoid:MoveTo(Vector3.new(-425.4451599121094, 16.70022201538086, 2984.232421875))
    wait(2)
    local args = {
        [1] = workspace.Teleporters.Teleporter5,
        [2] = 13,
        [3] = "Hellmode",
        [4] = false
    }
    game:GetService("ReplicatedStorage").Remotes.Teleporters.ChooseStage:FireServer(unpack(args))
else
    local realTimer = game:GetService("Workspace").Info.Time.RealTimer

    while true do
        local success, err = pcall(function()
            local currentValue = realTimer.Value
            print(currentValue)
            if currentValue > 250 and currentValue < 300 then
                local success250, err250 = pcall(function()
                    local args = {
                        [1] = game:GetService("Players").LocalPlayer.Equipped3.Value,
                        [2] = CFrame.new(50, 10, -141)
                    }
                    game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("SpawnNewTower"):InvokeServer(unpack(args))
                end)
                if not success250 then warn("Ошибка в SpawnNewTower на 250: " .. err250) end
            end

            if currentValue == 25 then
                local success25, err25 = pcall(function()
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AutoSkip"):FireServer()
                end)
                if not success25 then warn("Ошибка в AutoSkip: " .. err25) end

                local successSpawn25, errSpawn25 = pcall(function()
                    local args = {
                        [1] = game:GetService("Players").LocalPlayer.Equipped2.Value,
                        [2] = CFrame.new(93, 10, -98)
                    }
                    game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("SpawnNewTower"):InvokeServer(unpack(args))
                end)
                if not successSpawn25 then warn("Ошибка в SpawnNewTower на 25: " .. errSpawn25) end
            end

            if currentValue > 40 and currentValue < 300 then
                local success100, err100 = pcall(function()
                    local args = {
                        [1] = game:GetService("Players").LocalPlayer.Equipped1.Value,
                        [2] = CFrame.new(93, 10, -98)
                    }
                    game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("SpawnNewTower"):InvokeServer(unpack(args))
                    end)
                    local success100, err100 = pcall(function()
                    local args = {
                        [1] = workspace.Towers.SorcererAgent
                    }
                    game:GetService("ReplicatedStorage").Functions.UpgradeTower:InvokeServer(unpack(args))
                    end)
                    local success100, err100 = pcall(function()
                    local args = {
                        [1] = workspace.Towers.SorcererAgent2
                    }
                    game:GetService("ReplicatedStorage").Functions.UpgradeTower:InvokeServer(unpack(args))
                    end)
                    local success100, err100 = pcall(function()
                    local args = {
                        [1] = workspace.Towers.SorcererAgent3
                    }
                    game:GetService("ReplicatedStorage").Functions.UpgradeTower:InvokeServer(unpack(args))
                    end)
            end

            if currentValue > 300 and currentValue < 350 then
                local args = {
                    [1] = workspace.Towers.SorcererAgent4
                }
                game:GetService("ReplicatedStorage").Functions.UpgradeTower:InvokeServer(unpack(args))
                
            end

            if currentValue > 360 and currentValue < 420 then
                local args = {
                    [1] = workspace.Towers.KingOfCurses
                }
                game:GetService("ReplicatedStorage").Functions.UpgradeTower:InvokeServer(unpack(args))
            end

            if currentValue > 370 and currentValue < 480 then
                local args = {
                    [1] = workspace.Towers.SorcererAgent4
                }
                game:GetService("ReplicatedStorage").Functions.UpgradeTower:InvokeServer(unpack(args))
            end

            if currentValue > 420 and currentValue < 500 then
                local args = {
                    [1] = workspace.Towers.KingOfCurses2
                }
                game:GetService("ReplicatedStorage").Functions.UpgradeTower:InvokeServer(unpack(args))
            end

            if currentValue > 520 and currentValue < 600 then
                local args = {
                    [1] = workspace.Towers.KingOfCurses3
                }
                game:GetService("ReplicatedStorage").Functions.UpgradeTower:InvokeServer(unpack(args))
            end

            if currentValue == 550 then
                local args = {
                    [1] = game:GetService("Players").LocalPlayer.Equipped4.Value,
                    [2] = CFrame.new(50, 10, -127)
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("SpawnNewTower"):InvokeServer(unpack(args))
                local args = {
                    [1] = workspace.Towers.AmplifyingSorcerer
                }
                game:GetService("ReplicatedStorage").Functions.UpgradeTower:InvokeServer(unpack(args))
            end
            if currentValue == 620 then
                local args = {
                    [1] = workspace.Towers.AmplifyingSorcerer2
                }
                game:GetService("ReplicatedStorage").Functions.UpgradeTower:InvokeServer(unpack(args))
            end

            if currentValue > 720 and currentValue < 915 then
                local success = pcall(function()
                    local args = {
                        [1] = workspace.Towers.KingOfCurses4
                    }
                    game:GetService("ReplicatedStorage").Functions.UpgradeTower:InvokeServer(unpack(args))
                end)
            end

            if currentValue > 915 and currentValue < 1000 then
                local success = pcall(function()
                    local args = {
                        [1] = workspace.Towers.KingOfCurses5
                    }
                    game:GetService("ReplicatedStorage").Functions.UpgradeTower:InvokeServer(unpack(args))
                end)
            end
            if player.PlayerGui.GameGui.Info.Message.Text == "VICTORY" then
                local url = "https://discord.com/api/webhooks/1337737827810803773/okBl7WCf6i6BfYRWjBFfQOmaGAaaHXxp2tj37Bj4yi9hx0kvP9AQ91hyw6Xti3tm4YWa"
                local data = {["content"] = "11-14 Hellmode пройден за время: ".. game:GetService("Workspace").Info.Time.Timer.Value .. "\n Account: " .. character.Name}
                local newdata = game:GetService("HttpService"):JSONEncode(data)
                local headers = {["content-type"] = "application/json"}
                local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
            end
        end)
        if player.PlayerGui.GameGui.Info.Message.Text == "VICTORY" then
            break
        end
        if game:GetService("Players").LocalPlayer.PlayerGui.GameGui.EndScreen.Content.Title.Text == "GAME OVER" and game:GetService("Players").LocalPlayer.PlayerGui.GameGui.EndScreen.Visible then
            wait(5)
            break
        end
        if not success then
            warn("Ошибка: " .. err)
        end
        wait(1)
    end
end
