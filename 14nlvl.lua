local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

if game.PlaceId == 17720162456 then
    player.Character.HumanoidRootPart.CFrame = CFrame.new(-383, 17, 2942)
    humanoid:MoveTo(Vector3.new(-358, 17, 2920))
wait(5)
local args = {
    [1] = workspace.Teleporters.Teleporter6,
    [2] = 14,
    [3] = "Normal",
    [4] = false
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Teleporters"):WaitForChild("ChooseStage"):FireServer(unpack(args))

else
    local success, err = pcall(function()
        local realTimer = game:GetService("Workspace").Info.Time.RealTimer
  
        while true do
            local currentValue = realTimer.Value
            print("Текущее значение RealTimer:", currentValue)

            if currentValue == 30 then
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("AutoSkip"):FireServer()
            end
            if currentValue == 50 then
                local args = {
                    [1] = game:GetService("Players").LocalPlayer.Equipped5.Value,
                    [2] = CFrame.new(12, 11, -139)
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("SpawnNewTower"):InvokeServer(unpack(args))
            end

            if currentValue == 300 then
                local args = {
                    [1] = game:GetService("Players").LocalPlayer.Equipped2.Value,
                    [2] = CFrame.new(12, 11, -139)
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("SpawnNewTower"):InvokeServer(unpack(args))
            end
            -- Проверка на "VICTORY" теперь в цикле while
            if player.PlayerGui.GameGui.Info.Message.Text == "VICTORY" then
                local url = "https://discord.com/api/webhooks/1337737827810803773/okBl7WCf6i6BfYRWjBFfQOmaGAaaHXxp2tj37Bj4yi9hx0kvP9AQ91hyw6Xti3tm4YWa"
                local data = {["content"] = "@everyone 14 лвл пройден йоу"}
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
