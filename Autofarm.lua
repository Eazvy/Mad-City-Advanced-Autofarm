repeat wait() 
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("SetTeam", "Prisoners")  
until game.Players.LocalPlayer.Team.Name == "Prisoners"


--Teleport Bypass 
game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Parent = nil -- Teleport Bypass for Mad City
for i,v in pairs(getnilinstances()) do 
   if v.Name == "HumanoidRootPart" then
       v.Parent = game.Players.LocalPlayer.Character
   end
end
      
        
function RobStores()
     for _,v in pairs(game:GetService("Workspace").ObjectSelection:GetDescendants()) do 
        if v:IsA("Part") and v.Name == "SmashCash" then 
            game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = v.CFrame 
            wait()
            v.SmashCash.Event:FireServer()
        elseif v:IsA("MeshPart") and v.Name == "Cash" then 
            game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = v.CFrame 
            wait()
            v.Cash.Event:FireServer()
        elseif v:IsA("Part") and v.Name == "StealTV" then 
            game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = v.CFrame 
            wait()
            v.StealTV.Event:FireServer()
        elseif v:IsA("Part") and v.Name == "ATM" then 
            game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = v.CFrame 
            wait()
            v.ATM.Event:FireServer()
        end
     end
end



RobStores()


spawn(function()
    wait(8)
     local x = {}
     for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
     if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
     x[#x + 1] = v.id
     end
     end
     if #x > 0 then
     game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])
     else 
     game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])
     end
  end)
        
        
                
