local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local realTimer = game:GetService("Workspace").Info.Time.RealTimer

while true do
    local success, err = pcall(function()
        local currentValue = realTimer.Value
        print(currentValue)
        
        if currentValue == 30 then
            local success25, err25 = pcall(function()
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AutoSkip"):FireServer()
            end)
            if not success25 then warn("Ошибка в AutoSkip: " .. err25) end

            local successSpawn25, errSpawn25 = pcall(function()
                local args = {
                    [1] = game:GetService("Players").LocalPlayer.Equipped5.Value,
                    [2] = CFrame.new(-62.32533645629883, 6.7719244956970215, 79.64212799072266)
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("SpawnNewTower"):InvokeServer(unpack(args))
            end)
            if not successSpawn25 then warn("Ошибка в SpawnNewTower (25): " .. errSpawn25) end
        end

        if currentValue == 55 then
            local successSpawn25, errSpawn25 = pcall(function()
                local args = {
                    [1] = game:GetService("Players").LocalPlayer.Equipped1.Value,
                    [2] = CFrame.new(-62.32533645629883, 6.7719244956970215, 79.64212799072266)
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("SpawnNewTower"):InvokeServer(unpack(args))
            end)
            if not successSpawn25 then warn("Ошибка в SpawnNewTower (55): " .. errSpawn25) end
        end

        if currentValue == 70 then
            local successSpawn25, errSpawn25 = pcall(function()
                local args = {
                    [1] = game:GetService("Players").LocalPlayer.Equipped1.Value,
                    [2] = CFrame.new(-62.32533645629883, 6.7719244956970215, 79.64212799072266)
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("SpawnNewTower"):InvokeServer(unpack(args))
            end)
            if not successSpawn25 then warn("Ошибка в SpawnNewTower (70): " .. errSpawn25) end
        end

        if currentValue > 80 and currentValue < 90 then
            local successSpawn25, errSpawn25 = pcall(function()
                local args = {
                    [1] = game:GetService("Players").LocalPlayer.Equipped1.Value,
                    [2] = CFrame.new(-62.32533645629883, 6.7719244956970215, 79.64212799072266)
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("SpawnNewTower"):InvokeServer(unpack(args))
            end)
            if not successSpawn25 then warn("Ошибка в SpawnNewTower (80-90): " .. errSpawn25) end
        end

        if currentValue > 100 and currentValue < 160 then
            local successSpawn25, errSpawn25 = pcall(function()
                local args = { [1] = workspace.Towers.SorcererAgent }
                game:GetService("ReplicatedStorage").Functions.UpgradeTower:InvokeServer(unpack(args))

                local args = { [1] = workspace.Towers.SorcererAgent2 }
                game:GetService("ReplicatedStorage").Functions.UpgradeTower:InvokeServer(unpack(args))
            end)
            if not successSpawn25 then warn("Ошибка в UpgradeTower (100-160): " .. errSpawn25) end
        end

        if currentValue > 165 and currentValue < 170 then
            local successSpawn25, errSpawn25 = pcall(function()
                local args = {
                    [1] = game:GetService("Players").LocalPlayer.Equipped3.Value,
                    [2] = CFrame.new(-34.878849029541016, 6.7719244956970215, -62.40098571777344)
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("SpawnNewTower"):InvokeServer(unpack(args))
            end)
            if not successSpawn25 then warn("Ошибка в SpawnNewTower (165-170): " .. errSpawn25) end
        end

        if currentValue > 170 and currentValue <= 330 then
            wait(1)
            for _, tower in pairs(workspace.Towers:GetChildren()) do
                if string.match(tower.name, "SorcererAgent%d*") then
                    local level = tonumber(string.match(tower.name, "SorcererAgent(%d+)")) or 1
                    if level < 5 then
                        local args = { [1] = tower }
                        game:GetService("ReplicatedStorage").Functions.UpgradeTower:InvokeServer(unpack(args))
                    end
                end
            end
        end

        if currentValue >= 330 and currentValue <= 725 then
            wait(1)
            for _, tower in pairs(workspace.Towers:GetChildren()) do
                if string.match(tower.name, "KingOfCurses%d*") then
                    local level = tonumber(string.match(tower.name, "KingOfCurses(%d+)")) or 1
                    if level < 6 then
                        local args = { [1] = tower }
                        game:GetService("ReplicatedStorage").Functions.UpgradeTower:InvokeServer(unpack(args))
                    end
                end
            end
        end

        if currentValue > 725 and currentValue < 760 then
            local success, err = pcall(function()
                local args = {
                    [1] = game:GetService("Players").LocalPlayer.Equipped4.Value,
                    [2] = CFrame.new(50, 10, -127)
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("SpawnNewTower"):InvokeServer(unpack(args))

                local successUpgrade, errUpgrade = pcall(function()
                    local args = { [1] = workspace.Towers.AmplifyingSorcerer }
                    game:GetService("ReplicatedStorage").Functions.UpgradeTower:InvokeServer(unpack(args))
                end)
                if not successUpgrade then warn("Ошибка в UpgradeTower (AmplifyingSorcerer): " .. errUpgrade) end

                local args = { [1] = workspace.Towers.AmplifyingSorcerer2 }
                game:GetService("ReplicatedStorage").Functions.UpgradeTower:InvokeServer(unpack(args))
            end)
            if not success then warn("Ошибка в SpawnNewTower (725-760): " .. err) end
        end

        if currentValue > 750 then
            wait(1)
            for _, tower in pairs(workspace.Towers:GetChildren()) do
                if string.match(tower.name, "ShadowSorcerer%d*") then
                    local level = tonumber(string.match(tower.name, "ShadowSorcerer(%d+)")) or 1
                    if level < 5 then
                        local args = { [1] = tower }
                        game:GetService("ReplicatedStorage").Functions.UpgradeTower:InvokeServer(unpack(args))
                    end
                end
            end
        end

        if player.PlayerGui.GameGui.Info.Message.Text == "VICTORY" then
            game:GetService("ReplicatedStorage").Events.Replay:FireServer()
            local url = "https://discord.com/api/webhooks/1340016275451150346/8D17e1lcb3KBlTyRMofVhBS4A6sVksqzp0XGSvqMuhUsLV9c7r_gKObxClnd5PnTuV6j"
            local data = { ["content"] = "GojoRaid is completed for time: " .. game:GetService("Workspace").Info.Time.Timer.Value .. "\n Account: " .. character.Name }
            local newdata = game:GetService("HttpService"):JSONEncode(data)
            local headers = { ["content-type"] = "application/json" }
            local abcdef = { Url = url, Body = newdata, Method = "POST", Headers = headers }
            request(abcdef)
        end
    end)

    if player.PlayerGui.GameGui.Info.Message.Text == "VICTORY" then
        break
    end

    if game:GetService("Players").LocalPlayer.PlayerGui.GameGui.EndScreen.Content.Title.Text == "GAME OVER" and game:GetService("Players").LocalPlayer.PlayerGui.GameGui.EndScreen.Visible then
        local url = "https://discord.com/api/webhooks/1340016275451150346/8D17e1lcb3KBlTyRMofVhBS4A6sVksqzp0XGSvqMuhUsLV9c7r_gKObxClnd5PnTuV6j"
        local data = { ["content"] = "15 Hellmode не пройден, время: " .. game:GetService("Workspace").Info.Time.Timer.Value .. "\n Account: " .. character.Name }
        local newdata = game:GetService("HttpService"):JSONEncode(data)
        local headers = { ["content-type"] = "application/json" }
        local abcdef = { Url = url, Body = newdata, Method = "POST", Headers = headers }
        request(abcdef)

        wait(5)
        game:GetService("ReplicatedStorage").Events.Replay:FireServer()
        break
    end

    if not success then
        warn("Ошибка: " .. err)
    end

    wait(1)
end
