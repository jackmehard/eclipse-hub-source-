local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local Window = Rayfield:CreateWindow({
	Name = "Rayfield Example Window",
	LoadingTitle = "Rayfield Interface Suite",
	LoadingSubtitle = "by Sirius",
	ConfigurationSaving = {
		Enabled = true,
		FileName = "Big Hub"
	},
	KeySystem = false, -- Set this to true to use our key system
	KeySettings = {
		Title = "Sirius Hub",
		Subtitle = "Key System",
		Note = "Join the discord (discord.gg/sirius)",
		Key = "ABCDEF"
	}
})
local Tab = Window:CreateTab("Tab Example")
local Section = Tab:CreateSection("Section Example")
local Button = Tab:CreateButton({
	Name = "do this for qb gui to go away",
	Callback = function()
        enabled = false
		-- The function that takes place when the button is pressed
	end,
})
local Toggle = Tab:CreateToggle({
	Name = "qb aimbot",
	CurrentValue = false,
	Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(state)
      enabled = true
    local leadDistance = 5
    task.spawn(function()
        --// qb gui initalization
        local gui; do
    
            local AimCard = Instance.new("ScreenGui")
            local Angle = Instance.new("Frame")
            local AngleCorner = Instance.new("UICorner")
            local AngleNum = Instance.new("TextLabel")
            local NumCorn = Instance.new("UICorner")
            local AngleLabel = Instance.new("TextLabel")
            local LabelCorner = Instance.new("UICorner")
            local Player = Instance.new("Frame")
            local PlayerCorn = Instance.new("UICorner")
            local PlayerText = Instance.new("TextLabel")
            local NumCorn2 = Instance.new("UICorner")
            local PlayerLabel = Instance.new("TextLabel")
            local LabelCorner2 = Instance.new("UICorner")
            local Mode = Instance.new("Frame")
            local Modecorn = Instance.new("UICorner")
            local ModeText = Instance.new("TextLabel")
            local NumCorn3 = Instance.new("UICorner")
            local ModeLabel = Instance.new("TextLabel")
            local LabelCorner3 = Instance.new("UICorner")
            
            -- Properties
            
            AimCard.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
            AimCard.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            
            Angle.Name = "Angle"
            Angle.Parent = AimCard
            Angle.BackgroundColor3 = Color3.new(128,0,0)
            Angle.BorderColor3 = Color3.new(0, 0, 0)
            Angle.BorderSizePixel = 0
            Angle.Position = UDim2.new(0.110701106, 0, 0.447368413, 0)
            Angle.Size = UDim2.new(0, 100, 0, 100)
            Angle.ZIndex = 7
            
            AngleCorner.Name = "AngleCorner"
            AngleCorner.Parent = Angle
            
            AngleNum.Name = "AngleNum"
            AngleNum.Parent = Angle
            AngleNum.BackgroundColor3 = Color3.new(128,0,0)
            AngleNum.BackgroundTransparency = 1
            AngleNum.BorderColor3 = Color3.new(0, 0, 0)
            AngleNum.BorderSizePixel = 0
            AngleNum.Size = UDim2.new(0, 100, 0, 72)
            AngleNum.Font = Enum.Font.Gotham
            AngleNum.Text = "40"
            AngleNum.TextColor3 = Color3.new(1, 1, 1)
            AngleNum.TextScaled = true
            AngleNum.TextSize = 1
            AngleNum.TextWrapped = true
            
            NumCorn.Name = "NumCorn"
            NumCorn.Parent = AngleNum
            
            AngleLabel.Name = "AngleLabel"
            AngleLabel.Parent = Angle
            AngleLabel.BackgroundColor3 = Color3.new(128,0,0)
            AngleLabel.BackgroundTransparency = 1
            AngleLabel.BorderColor3 = Color3.new(0, 0, 0)
            AngleLabel.BorderSizePixel = 0
            AngleLabel.Position = UDim2.new(0, 0, 0.660000026, 0)
            AngleLabel.Size = UDim2.new(0, 100, 0, 34)
            AngleLabel.Font = Enum.Font.Gotham
            AngleLabel.Text = "Angle"
            AngleLabel.TextColor3 = Color3.new(0.396078, 1, 0.588235)
            AngleLabel.TextSize = 22
            
            LabelCorner.Name = "LabelCorner"
            LabelCorner.Parent = AngleLabel
            
            Player.Name = "Player"
            Player.Parent = AimCard
            Player.BackgroundColor3 = Color3.new(128,0,0)
            Player.BorderColor3 = Color3.new(0, 0, 0)
            Player.BorderSizePixel = 0
            Player.Position = UDim2.new(0.110701106, 0, 0.563157916, 0)
            Player.Size = UDim2.new(0, 100, 0, 100)
            Player.ZIndex = 7
            
            PlayerCorn.Name = "PlayerCorn"
            PlayerCorn.Parent = Player
            
            PlayerText.Name = "PlayerText"
            PlayerText.Parent = Player
            PlayerText.BackgroundColor3 = Color3.new(1, 1, 1)
            PlayerText.BackgroundTransparency = 1
            PlayerText.BorderColor3 = Color3.new(0, 0, 0)
            PlayerText.BorderSizePixel = 0
            PlayerText.Size = UDim2.new(0, 100, 0, 72)
            PlayerText.Font = Enum.Font.Gotham
            PlayerText.Text = "playaa"
            PlayerText.TextColor3 = Color3.new(1, 1, 1)
            PlayerText.TextScaled = true
            PlayerText.TextSize = 1
            PlayerText.TextWrapped = true
            
            NumCorn2.Name = "NumCorn2"
            NumCorn2.Parent = PlayerText
            
            PlayerLabel.Name = "PlayerLabel"
            PlayerLabel.Parent = Player
            PlayerLabel.BackgroundColor3 = Color3.new(1, 1, 1)
            PlayerLabel.BackgroundTransparency = 1
            PlayerLabel.BorderColor3 = Color3.new(0, 0, 0)
            PlayerLabel.BorderSizePixel = 0
            PlayerLabel.Position = UDim2.new(0, 0, 0.660000026, 0)
            PlayerLabel.Size = UDim2.new(0, 100, 0, 34)
            PlayerLabel.Font = Enum.Font.Gotham
            PlayerLabel.Text = "Player"
            PlayerLabel.TextColor3 = Color3.new(0.396078, 1, 0.588235)
            PlayerLabel.TextSize = 22
            
            LabelCorner2.Name = "LabelCorner2"
            LabelCorner2.Parent = PlayerLabel


            Mode.Name = "Mode"
            Mode.Parent = AimCard
            Mode.BackgroundColor3 = Color3.new(128,0,0)
            Mode.BorderColor3 = Color3.new(0, 0, 0)
            Mode.BorderSizePixel = 0
            Mode.Position = UDim2.new(0.110701106, 0, 0.33157894, 0)
            Mode.Size = UDim2.new(0, 100, 0, 100)
            Mode.ZIndex = 7
            
            Modecorn.Name = "Modecorn"
            Modecorn.Parent = Mode
            
            ModeText.Name = "ModeText"
            ModeText.Parent = Mode
            ModeText.BackgroundColor3 = Color3.new(1, 1, 1)
            ModeText.BackgroundTransparency = 1
            ModeText.BorderColor3 = Color3.new(0, 0, 0)
            ModeText.BorderSizePixel = 0
            ModeText.Size = UDim2.new(0, 100, 0, 72)
            ModeText.Font = Enum.Font.Gotham
            ModeText.Text = "Bullet"
            ModeText.TextColor3 = Color3.new(1, 1, 1)
            ModeText.TextScaled = true
            ModeText.TextSize = 1
            ModeText.TextWrapped = true
            
            NumCorn3.Name = "NumCorn3"
            NumCorn3.Parent = ModeText
            
            ModeLabel.Name = "ModeLabel"
            ModeLabel.Parent = Mode
            ModeLabel.BackgroundColor3 = Color3.new(1, 1, 1)
            ModeLabel.BackgroundTransparency = 1
            ModeLabel.BorderColor3 = Color3.new(0, 0, 0)
            ModeLabel.BorderSizePixel = 0
            ModeLabel.Position = UDim2.new(0, 0, 0.660000026, 0)
            ModeLabel.Size = UDim2.new(0, 100, 0, 34)
            ModeLabel.Font = Enum.Font.Gotham
            ModeLabel.Text = "Mode"
            ModeLabel.TextColor3 = Color3.new(0.396078, 1, 0.588235)
            ModeLabel.TextSize = 22
            
            LabelCorner3.Name = "LabelCorner3"
            LabelCorner3.Parent = ModeLabel
            
            gui = AimCard
        end
        --// main
        local modes = {
            ["Dime"] = "Mag",
            ["Mag"] = "Bullet",
            ["Bullet"] = "Slant",
            ["Slant"] = "Fold",
            ["Fold"] = "Dime"

        }
        local players = game:GetService("Players")
        local runService = game:GetService("RunService")
        local userInputService = game:GetService("UserInputService")
        local replicatedStorage = game:GetService("ReplicatedStorage")
        local player = players.LocalPlayer
        local angle = 55
        local target = nil
        local locked = false
        local realpower = 0
        local camera = workspace.CurrentCamera
        local highlight = Instance.new("Highlight")
        local sphere = Instance.new("Part")
        local upower, udirection = 0, Vector3.new(0, 0, 0)
        local mouse = loadstring(game:HttpGet("https://raw.githubusercontent.com/vFishyTurtle/UI-Libraries/main/Apple%20Library/a"))()
        local mouseRaycastParams = RaycastParams.new()	
        local usePart = Instance.new("Part")
        usePart.Anchored = true
        usePart.CanCollide = false
        usePart.Size = Vector3.new(2048, 1, 2048)
        usePart.Transparency = 1
        usePart.Parent = workspace
        usePart.Position = player.Character.HumanoidRootPart.Position - Vector3.new(0, 2, 0)
        mouseRaycastParams.FilterType = Enum.RaycastFilterType.Include
        mouseRaycastParams.FilterDescendantsInstances = {usePart}
        mouse:SetRaycastParams(mouseRaycastParams)
        local beam, a0, a1 = Instance.new("Beam"), Instance.new("Attachment"), Instance.new("Attachment")
        local hooked = {}
        local locked = false
        local target = nil

        --// hooking (T to throw was crazy)
        local __namecall; __namecall = hookmetamethod(game, "__namecall", function(self, ...)
            local args = {...}
            if not checkcaller() and hooked[self] and enabled and args[1] == "Clicked" then
                local nwArgs = {"Clicked", player.Character.Head.Position, player.Character.Head.Position + throwData.direction * 10000, (game.PlaceId == 8206123457 and throwData.power) or 60, throwData.power}
                return __namecall(self, unpack(nwArgs))
            end
            return __namecall(self, ...)
        end)
        --// initalization
        gui.Parent = game.CoreGui:FindFirstChild("RobloxGui")
        beam.Parent = workspace.Terrain
        a0.Parent = workspace.Terrain
        a1.Parent = workspace.Terrain
        beam.Attachment0 = a0
        beam.Attachment1 = a1
        beam.Transparency = NumberSequence.new({
            NumberSequenceKeypoint.new(0, 1),
            NumberSequenceKeypoint.new(0, 1),
            NumberSequenceKeypoint.new(1, 0),
        })
        beam.Segments = 1750
        beam.Width0 = 1
        beam.Width1 = 1
        --// main
    
        local function getMoveDirection(target)
            if players:GetPlayerFromCharacter(target) then
                return target.Humanoid.MoveDirection
            else
                return (target.Humanoid.WalkToPoint - target.Head.Position).Unit
            end
        end
    
        local function checkIsDiagonal()
            local md = getMoveDirection(target)
            local absMD = Vector3.new(math.abs(md.X), 0, math.abs(md.Z))
            local diff = (absMD - Vector3.new(0.7, 0, 0.7)).Magnitude
            return diff < 0.25
        end
    
        local function checkIsSideways()
            local md = getMoveDirection(target)
            return math.abs(md.Z) < math.abs(md.X)
        end
    
        local function checkMovingTowardsQB()
            local md = getMoveDirection(target)
            local lastDis = (target.Head.Position - player.Character.Head.Position).Magnitude
            local nwPos = target.Head.Position + md
            local nwDis = (nwPos - player.Character.Head.Position).Magnitude
            local diff = lastDis - nwDis
            return diff > 0.5
        end
        local function findClosestDistanceToDB()
            local closestDis = math.huge
            local closestDB = nil
            for index, player in pairs(players:GetPlayers()) do
                if player.Team and player.Team == players:GetPlayerFromCharacter(target).Team then continue end
                if player.Character == target then continue end
                if player.Character and player.Character:FindFirstChild("Head") then
                    local distance = (player.Character.Head.Position - target.Head.Position).Magnitude
                    if distance < closestDis then
                        closestDis = distance
                        closestDB = player.Character
                    end	
                end
            end
            return closestDis, closestDB
        end
    
    
    
        local function findPower(pos)
            local powerTable = {
                [10] = 55,
                [20] = 60,
                [30] = 65,
                [35] = 70,
                [40] = 75,
                [50] = 80,
                [60] = 85,
                [70] = 90,
                [80] = 95,
            }
            local distance = (player.Character.Head.Position - pos).Magnitude
            local lDiff = math.huge
            local power = 0
            local pdistance = nil
            local reachedDis = 0
            local nextDis = 0
            local naturalPower = 0
            for dis, pwr in pairs(powerTable) do
                dis *= 3
                if distance > dis and dis > reachedDis then
                    power = pwr
                    naturalPower = pwr
                    pdistance = dis
                    reachedDis = dis
                    if dis == 90 then nextDis = dis + 15 else nextDis = dis + 30 end
                end
            end
            local diff = math.clamp(nextDis - distance, 0, math.huge)
            local required = (nextDis - reachedDis)
            local nextPower = powerTable[nextDis / 3] or 75
            local percentage = diff / required
            --print(diff, required, nextPower, power, percentage, (nextPower - power) - ((nextPower - power) * percentage))
            power += math.clamp((nextPower - power) - ((nextPower - power) * percentage), 0, 100)
            if power ~= power then
                power = 50
            end
            return power - 5, naturalPower - 5
        end
    --beam
        local function calculateVelocity(x0, d0, t)
            local g = Vector3.new(0, -28, 0)
            local v0 = (d0 - x0 - 0.5*g*t*t)/t;
            local dir = ((x0 + v0) - x0).Unit
            local power = v0.Y / dir.Y
            return v0, dir, math.clamp(math.round(power), 0, 95)
        end
    
        local function findZDirection(at)
            local zDiff = player.Character.HumanoidRootPart.Position.Z - at.Z
            local a = 0
            if zDiff < 0 then
                a = 1
            else
                a = -1
            end
            return a	
        end
    
        local function straightenMoveDirection(moveDirection, pos)
            -- wrs tend to turn and can mess up the dime, so let's straighten the movedirection.
            moveDirection = Vector3.new(moveDirection.X, 0, moveDirection.Z)
            local x = moveDirection.X
            local z = moveDirection.Z
            if math.abs(x) > 0.95 then
                if x ~= math.abs(x) then
                    x = -1
                else
                    x = 1
                end
            else
                x = 0
            end
            if math.abs(z) > 0.95 then
                if z ~= math.abs(z) then
                    z = -1
                else
                    z = 1
                end
            else
                z = 0
            end
            local md = Vector3.new(x, 0, z)
            if md.Magnitude <= 0 then
                md = Vector3.new(0, 0, findZDirection(pos))
            end
            return md
        end
    
        local function findtarget()
            local np = nil
            local nm = math.huge
            local s = {workspace}
            if workspace:FindFirstChild("npcwr") then
                table.insert(s, workspace.npcwr.a)
                table.insert(s, workspace.npcwr.b)
            end
            for i, p in pairs(s) do
                for i, c in pairs(p:GetChildren()) do
                    if c:FindFirstChildWhichIsA("Humanoid") and c:FindFirstChild("HumanoidRootPart") then
                        local plr = players:GetPlayerFromCharacter(c)
                        if plr == player then continue end
                        if not plr and game.PlaceId ~= 8206123457 then continue end
                        if not player.Neutral then
                            if plr.Team ~= player.Team then
                                continue
                            end
                        end
                        local d = (c.HumanoidRootPart.Position - mouse.Hit.Position).Magnitude
                        if d < nm then
                            nm = d
                            np = c
                        end	
                    end
                end
            end
            return np
        end
 
        
        local function methodIsA(self, method)
            return string.lower(self) == string.lower(method)
        end
    
        local remotes = {Fake = {}}
    
        local function spoofRemote(remote, funcOnFire)
            local fakeSelf = remote:Clone()
            fakeSelf.Parent = remote.Parent
            remote.Name = ""
            remotes[remote] = funcOnFire
            remotes.Fake[fakeSelf] = remote
        end
    
        local __namecall; __namecall = hookmetamethod(game, "__namecall", function(self, ...)
            local method = getnamecallmethod()
            if methodIsA(method, "FireServer") and not checkcaller() and remotes.Fake[self]  then
                remotes.Fake[self]:FireServer(remotes[remotes.Fake[self]](...))
            end
            return __namecall(self, ...)
        end)
    
        local function hookFootball(fb)
            local ls = fb.Handle:WaitForChild("LocalScript", 1)
            if ls then
                ls.Enabled = false
                local remoteEvent = fb.Handle:FindFirstChild("RemoteEvent")
                if remoteEvent then
                    spoofRemote(remoteEvent, function(old)
                        local args = {old}
                        if args[1] == "Clicked" then
                            if enabled then
                                return unpack({"Clicked", player.Character.Head.Position, player.Character.Head.Position + (udirection * 10000), (game.PlaceId == 8206123457 and upower) or 61, (game.PlaceId ~= 8206123457 and upower) or nil})
                            else
                                local direction = (player:GetMouse().Hit.Position - camera.CFrame.Position).Unit
                                return unpack({"Clicked", player.Character.Head.Position, player.Character.Head.Position + (direction * 10000), (game.PlaceId == 8206123457 and realpower) or 61, realpower})
                            end
                        else
                            return old
                        end
                    end)
                    fb:WaitForChild("Handle"):WaitForChild("LocalScript").Enabled = true
                end
                ls.Enabled = true
            end
        end
    
        player.Character.ChildAdded:Connect(function(fb)
            if fb:IsA("Tool") then
                fb:WaitForChild("Handle")
                hookFootball(fb)
            end
        end)
    
        userInputService.InputBegan:Connect(function(input, gp)
            if not gp then
                
                if input.KeyCode == Enum.KeyCode.Z then
                    while userInputService:IsKeyDown(Enum.KeyCode.Z) and gui.Mode.ModeText.Text ~= "Slant"  do
                        angle = angle + 5
                        angle = math.clamp(angle, 10, 99)
                        gui.Angle.AngleNum.Text = angle
                        task.wait(1 / 6)
                    end
                elseif input.KeyCode == Enum.KeyCode.F then
                    while userInputService:IsKeyDown(Enum.KeyCode.F) and gui.Mode.ModeText.Text ~= "Dime" do
                        angle = angle - 5
                        angle = math.clamp(angle, 10, 99)
                        gui.Angle.AngleNum.Text = angle
                        task.wait(1 / 6)
                    end
                elseif input.KeyCode == Enum.KeyCode.Q then
                    locked = not locked
                elseif input.KeyCode == Enum.KeyCode.Z then
                    if angle == 15 then
                        angle = 15
                        angle = math.clamp(angle, 10, 95)
                        gui.Angle.AngleNum.Text = angle
                        gui.Mode.ModeText.Text = "Bullet"
                        leadDistance = 3.5
                    elseif input.KeyCode == Enum.KeyCode.P then
                        angle = 10
                        angle = math.clamp(angle, 10, 99)
                        gui.Angle.AngleNum.Text = angle
                        gui.Mode.ModeText.Text = "Dime"
                        leadDistance = 3.5
                    end
                end
            end
        end)        
    
        local function calculateLanding(power, direction)
            local vel = power * direction
            local origin = player.Character.Head.Position + direction * 4.5
            local peakTime = vel.Y / 28
            return origin + Vector3.new(vel.X * peakTime * 2, 0, vel.Z * peakTime * 2)	
        end
    
        local line = Drawing.new("Line")
        line.Visible = true
        line.Color = Color3.fromRGB(255, 255, 255)
        line.Thickness = 1
    
        sphere.Size = Vector3.new(2, 2, 2)
        sphere.Material = Enum.Material.ForceField
        sphere.Anchored = true
        sphere.CanCollide = false
        sphere.Color = Color3.fromRGB(192, 192, 192)
        sphere.Parent = workspace
        highlight.FillColor = Color3.fromRGB(192, 192, 192)
    
        player.PlayerGui.ChildAdded:Connect(function(child)
            if child.Name == "BallGui" then
                local disp = child:WaitForChild("Frame"):WaitForChild("Disp")
                disp.Changed:Connect(function()
                    realpower = tonumber(disp.Text)
                end)
            end
        end)
     
        while true do
            runService.RenderStepped:Wait()
            pcall(function()
                if not locked then
                    target = findtarget()
                end
                gui.Enabled = player.PlayerGui:FindFirstChild("BallGui") and enabled
                if target and enabled and player.PlayerGui:FindFirstChild("BallGui") then
                    local position, onScreen = workspace.CurrentCamera:WorldToViewportPoint(target.HumanoidRootPart.Position)
                    local power = findPower(target.Head.Position)
                    local moveDirection = (straightenThrowDirection and straightenMoveDirection(getMoveDirection(target), target.Head.Position)) or getMoveDirection(target)
                    local assumedDirection = (target.Head.Position - player.Character.Head.Position).Unit
                    local speed = (assumedDirection * power).Magnitude
                    local t = ((target.Head.Position - player.Character.Head.Position).Magnitude / speed) * (angle / 20)
                    local velocity, dir, pwr = calculateVelocity(player.Character.Head.Position + assumedDirection * 4, target.Head.Position + (moveDirection * 20 * t) + moveDirection * leadDistance, t)
                    highlight.Parent = target
                    upower = math.clamp(pwr, 0, 95)
                    udirection = dir
                    sphere.Transparency = 0
                    gui.Player.PlayerText.Text = target.Name
                    sphere.Position = calculateLanding(upower, udirection)
                    if onScreen then
                        line.Visible = true
                        line.From = workspace.CurrentCamera:WorldToViewportPoint(player.Character.Football.Handle.Position)
                        line.To = Vector2.new(position.X, position.Y)
                    else
                        line.Visible = false
                    end
                else
                    line.Visible = true
                    highlight.Parent = nil
                    sphere.Transparency = 1
                end
            end)
        end
    end)
    end
    })
 
    
    
    local Toggle = Tab:CreateToggle({
        Name = "angle qb",
        CurrentValue = false,
        Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(state)
    autoAngle = v
    end
    })

--beam
