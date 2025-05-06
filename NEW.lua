task.spawn(function()
    task.wait(1) -- Wait 5 seconds before executing
    loadstring(game:HttpGet("https://raw.githubusercontent.com/hbjrev/queue.github.io/refs/heads/main/queue.lua"))()
end)


task.spawn(function()
    task.wait(7) -- Wait 5 seconds before executing
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ewewe514/bywe.github.io/refs/heads/main/ak.lua"))()
end)


task.spawn(function()
    task.wait(12) -- Wait 5 seconds before executing
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ewewe514/weuhwej.github.io/refs/heads/main/man.lua"))()
end)


task.spawn(function()
    task.wait(105) -- Wait 105 seconds before executing
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ewewe514/lowserver.github.io/refs/heads/main/lowserver.lua"))()
end)



local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

-- Function to run loadstring when health is below 15 or if player dies
local function checkHealth()
    if humanoid.Health <= 15 then
        print("Health is low, executing loadstring...")
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ewewe514/lowserver.github.io/refs/heads/main/lowserver.lua"))()
    end
end

-- Connect HealthChanged event
humanoid.HealthChanged:Connect(checkHealth)

-- Connect Died event
humanoid.Died:Connect(function()
    print("Player has died, executing loadstring...")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ewewe514/lowserver.github.io/refs/heads/main/lowserver.lua"))()
end)
