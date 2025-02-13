local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

if game.PlaceId == 17720162456 then
wait(15)
      player.Character.HumanoidRootPart.CFrame = CFrame.new(-333.0579833984375, 16.933761596679688, 2945.642578125)
    humanoid:MoveTo(Vector3.new(-351.4451599121094, 16.70022201538086, 2964.232421875))
    wait(5)
wait(5)
local args = {
    [1] = workspace.Teleporters.Teleporter4,
    [2] = 7,
    [3] = "Hellmode",
    [4] = false
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Teleporters"):WaitForChild("ChooseStage"):FireServer(unpack(args))

else
    local success, err = pcall(function()
        local realTimer = game:GetService("Workspace").Info.Time.RealTimer
        wait(1)  
        while true do
            local currentValue = realTimer.Value
            print("Текущее значение RealTimer:", currentValue)

            if currentValue == 30 then
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AutoSkip"):FireServer()
            end
            if currentValue == 20 or currentValue == 25 then
                local args = {
                    [1] = game:GetService("Players").LocalPlayer.Equipped5.Value,
                    [2] = CFrame.new(64, 38, -130)
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("SpawnNewTower"):InvokeServer(unpack(args))
            end

            if currentValue == 50 then 
                local args = {
                    [1] = game:GetService("Players").LocalPlayer.Equipped1.Value,
                    [2] = CFrame.new(45, 38, -109)
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("SpawnNewTower"):InvokeServer(unpack(args))
            end
            if currentValue == 53 then 
                local args = {
                    [1] = game:GetService("Players").LocalPlayer.Equipped1.Value,
                    [2] = CFrame.new(45, 38, -109)
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("SpawnNewTower"):InvokeServer(unpack(args))
            end
            if currentValue == 56 then 
                local args = {
                    [1] = game:GetService("Players").LocalPlayer.Equipped1.Value,
                    [2] = CFrame.new(45, 38, -109)
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("SpawnNewTower"):InvokeServer(unpack(args))
            end

            if currentValue == 60 then 
                local args = {
                    [1] = game:GetService("Players").LocalPlayer.Equipped1.Value,
                    [2] = CFrame.new(45, 38, -109)
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("SpawnNewTower"):InvokeServer(unpack(args))
            end
            if currentValue >= 65 and currentValue <= 145 then 
                wait(1)
                for _, tower in pairs(workspace.Towers:GetChildren()) do
                    if string.match(tower.name, "SorcererAgent%d*") then
                        local level = tonumber(string.match(tower.name, "SorcererAgent(%d+)")) or 1
                        if level < 5 then
                        local args = {
                            [1] = tower
                                }
                                game:GetService("ReplicatedStorage").Functions.UpgradeTower:InvokeServer(unpack(args))                                
                        end 
                    end                         
                end
            end
            if currentValue == 155 or currentValue == 160 or currentValue == 165 then                 
                local args = {
                    [1] = game:GetService("Players").LocalPlayer.Equipped3.Value,
                    [2] = CFrame.new(113, 38, -126)
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("SpawnNewTower"):InvokeServer(unpack(args))
            end
            if currentValue >= 180 and currentValue <= 215 then 
                wait(1)
                for _, tower in pairs(workspace.Towers:GetChildren()) do
                    if string.match(tower.name, "SorcererAgent%d*") then
                        local level = tonumber(string.match(tower.name, "SorcererAgent(%d+)")) or 1
                        if level < 5 then
                        local args = {
                            [1] = tower
                                }
                                game:GetService("ReplicatedStorage").Functions.UpgradeTower:InvokeServer(unpack(args))                                
                        end 
                    end                         
                end
            end
            if currentValue == 215 or currentValue == 220 or currentValue == 225 or currentValue == 230 then
                local args = {
                    [1] = game:GetService("Players").LocalPlayer.Equipped2.Value,
                    [2] = CFrame.new(113, 38, -126)
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("SpawnNewTower"):InvokeServer(unpack(args))
            end 
              if currentValue == 220 or currentValue == 225 or currentValue == 230 or currentValue == 235 then
            local args = {
                    [1] = game:GetService("Players").LocalPlayer.Equipped4.Value,
                    [2] = CFrame.new(113, 38, -126)
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("SpawnNewTower"):InvokeServer(unpack(args))
            end
            if currentValue >= 232 and currentValue <= 310 then 
                wait(1)
                for _, tower in pairs(workspace.Towers:GetChildren()) do
                    if string.match(tower.name, "SorcererAgent%d*") then
                        local level = tonumber(string.match(tower.name, "SorcererAgent(%d+)")) or 1
                        if level < 5 then
                        local args = {
                            [1] = tower
                                }
                                game:GetService("ReplicatedStorage").Functions.UpgradeTower:InvokeServer(unpack(args))                                
                        end 
                    end                         
                end
            end   
            if currentValue >= 320 and currentValue <= 370 then 
                wait(1)
                for _, tower in pairs(workspace.Towers:GetChildren()) do
                    if string.match(tower.name, "KingOfCurses%d*") then
                        local level = tonumber(string.match(tower.name, "KingOfCurses(%d+)")) or 1
                        if level < 6 then
                        local args = {
                            [1] = tower
                                }
                                game:GetService("ReplicatedStorage").Functions.UpgradeTower:InvokeServer(unpack(args))                                
                        end                    
                    end
                end
            end
            if currentValue >= 373 and currentValue <= 430 then 
                wait(1)
                for _, tower in pairs(workspace.Towers:GetChildren()) do
                    if string.match(tower.name, "AmplifyingSorcerer%d*") then
                        local level = tonumber(string.match(tower.name, "AmplifyingSorcerer(%d+)")) or 1
                        if level < 3 then
                        local args = {
                            [1] = tower
                                }
                                game:GetService("ReplicatedStorage").Functions.UpgradeTower:InvokeServer(unpack(args))                                
                        end                    
                    end
                end
            end
            if currentValue >= 440 and currentValue <= 700 then 
                wait(1)
                for _, tower in pairs(workspace.Towers:GetChildren()) do
                    if string.match(tower.name, "KingOfCurses%d*") then
                        local level = tonumber(string.match(tower.name, "KingOfCurses(%d+)")) or 1
                        if level < 6 then
                        local args = {
                            [1] = tower
                                }
                                game:GetService("ReplicatedStorage").Functions.UpgradeTower:InvokeServer(unpack(args))                                
                        end                    
                    end
                end
            end
                        -- Проверка на "VICTORY" теперь в цикле while
                        if player.PlayerGui.GameGui.Info.Message.Text == "VICTORY" then
                            local url = "https://discord.com/api/webhooks/1337737827810803773/okBl7WCf6i6BfYRWjBFfQOmaGAaaHXxp2tj37Bj4yi9hx0kvP9AQ91hyw6Xti3tm4YWa"
                            local data = {["content"] = "@everyone 7 трудни лвл пройден йоу"}
                            local newdata = game:GetService("HttpService"):JSONEncode(data)
                            local headers = {["content-type"] = "application/json"}
                            local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
                            request(abcdef)
                            break
                        end
if player.PlayerGui.GameGui.EndScreen.Content.Title.Text == "VICTORY" then
break
    end
if game:GetService("Players").LocalPlayer.PlayerGui.GameGui.EndScreen.Content.Title.Text == "GAME OVER" and game:GetService("Players").LocalPlayer.PlayerGui.GameGui.EndScreen.Visible then
            wait(5)
            break
        end
                        wait(1)
                    end
    end)
    if not success then
        warn("Ошибка: " .. err)
    end
end
