function doTap()
    spawn(function()
        while Tap == true do
            game:GetService("ReplicatedStorage").Events.Tap:FireServer()
            task.wait()
        end
    end)
end

function autoRebirth(selectedRebirth)
    spawn(function()
        while wait() do
            if not getgenv().Rebirth then break end
            local args = {
            [1] = selectedRebirth}
            game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args))
        end
    end)
end

function autoclaimrandomreward()
    spawn(function()
        while wait(1) do
            game:GetService("ReplicatedStorage").Events.ClaimRandomReward:FireServer()
        end
    end)
end
