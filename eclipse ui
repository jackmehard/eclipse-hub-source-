print('Initializing AC Bypass!')

--// Services
local Players = cloneref(game:GetService("Players"))
local ReplicatedStorage = cloneref(game:GetService("ReplicatedStorage"))
local RunService = cloneref(game:GetService("RunService"))
local UserInputService = cloneref(game:GetService("UserInputService"))
local Teams = cloneref(game:GetService("Teams"))
local TweenService = cloneref(game:GetService("TweenService"))
local Stats = cloneref(game:GetService("Stats"))
local RunService = cloneref(game:GetService("RunService"))

if game.PlaceId ~= 8206123457 or game.PlaceId == 8204899140 then
    --> Made by Unlimited, Modified/Updated by NG/Johan Peterson

    --// Services
    local ReplicatedStorage = game:GetService("ReplicatedStorage")

    --// Variables
    local Player = game:GetService("Players").LocalPlayer
    local Character = Player.Character or Player.CharacterAdded:Wait()
    local HRP = Character and Character.HumanoidRootPart
    local Hooks = {}
    local HandshakeArgs = nil
    local Remote = ReplicatedStorage:WaitForChild("Remotes").CharacterSoundEvent
    local ACString = nil
    
    --> os.clock hook
    local RandomNumber = math.random(1e3, 1e5)

    Hooks.Clock = hookfunction(os.date, function(...)
        return Hooks.Clock(...) + RandomNumber
    end)

    --> namecall hook
    Hooks.Namecall = hookmetamethod(game, "__namecall", function(self, ...)
        local Method = getnamecallmethod()
        local Args = {...}

        if not checkcaller() and self == Remote and (Method == "FireServer" or Method == "fireServer") and string.find(Args[1], "AC") then
            if not HandshakeArgs then
                if type(Args[2]) == "table" and #Args[2] == 19 then
                    ACString = Args[1]
                    HandshakeArgs = Args[2]
                end
            else
                return coroutine.yield()
            end
        end

        return Hooks.Namecall(self, ...)
    end)

    while not ACString and not HandshakeArgs do
        task.wait()
    end

    print("Found handshake arguments.")

    task.wait(3)

    for i, v in pairs(getgc()) do
        if type(v) == "function" then
            if getinfo(v).source:find("PlayerModule.LocalScript") then
                hookfunction(v, function() end)
            end
        end
    end

    print("Hooked all anticheat functions.")

    local ReplicateHandshake = function()
        return Remote:fireServer(ACString, HandshakeArgs, nil)
    end

    task.spawn(function()
        while task.wait(0.4) do
            local Success, Error = pcall(ReplicateHandshake)

            if not Success or Error then
                return {
                    warn("Bypass timed out."),
                    task.wait(20),
                    game:GetService("Players").LocalPlayer:Kick("Bypass timed out.")
                }
            end
        end
    end)

    print("Replicated handshake.")
end

task.wait()

print('Done! Now Loading')

--> UI Initialization
local MakoLib = loadstring(game:HttpGet("https://gist.githubusercontent.com/N2TheLegend/bc773f2cb81cff790e1929e40ce83664/raw/9746b17e8537d53cd32c45f311eb949f1b553f07/Mako.lua",true))()

local Window = MakoLib:CreateWindow({
    Title = "Meta Hub "
})

local MainTab = Window:CreateTab("Main", 13594361489)
local CharacterTab = Window:CreateTab("Player", 13585011079)
local PhysicsTab = Window:CreateTab("Physics")

--> Section Stuff
local QBAimbot = MainTab:CreateSection("QB Aimbot", 13594361489)
local FootballMagnents = MainTab:CreateSection("Magnents", 13594361489)
local QBAimbot = MainTab:CreateSection("Passing", 13594361489)
local PullVector = MainTab:CreateSection("Pull Vector", 13594361489)
local Physics = PhysicsTab:CreateSection("Dive Vector")
local Misc = CharacterTab:CreateSection("Misc", 13585011079)
local Movement = CharacterTab:CreateSection("Movement", 13585011079)

--> Variables For Callbacks
getgenv().qbaimbotenabled = false
getgenv().showArcTracer = false
getgenv().predictBallArc = false
getgenv().autoAngle = false
getgenv().hideDeco = false
getgenv().customLead = 0
getgenv().customTargetHeight = 0
getgenv().AutoLeadDistance = false

getgenv().Football_Magnents = false
getgenv().Pull_Vector = false

getgenv().Football_DistanceCatch = 0
getgenv().Football_Vector = 0

getgenv().Custom_WalkSpeed = false
getgenv().Custom_JumpPower = false

getgenv().Magnent_Mode = nil

--> Toggles and Sliders Setup

FootballMagnents:CreateToggle({
    Title = "Enabled",
    Binding = false,
    CurrentValue = false,
    Callback = function(Value)
        getgenv().Football_Magnents = Value
    end,
})

FootballMagnents:CreateDropdown({
    Title = "Mag Type",
    Options = {"Regular", "Blatant", "Legit"},
    CurrentOption = "Regular",
    Callback = function(Value)
        if (getgenv().Football_Magnents) then
            
        end
    end,
})

local autodist = 10

local function autoCatch()
    while true do
        task.wait()
        local ball = workspace:FindFirstChild("Football")
        if ball and ball.ClassName == "BasePart" then
            local distance = (ball.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            if distance < autodist then
                game:GetService("ReplicatedStorage").Remotes.CharacterSoundEvent:fireServer("PlayerActions", "catch")
                task.wait(1.5)
            end
        end
    end
end

FootballMagnents:CreateToggle({
    Title = "Auto Catch",
    Binding = false,
    CurrentValue = false,
    Callback = function(value)
        if value then
            autoCatch()
        end
    end,
})

FootballMagnents:CreateSlider({
    Title = "Auto Catch Distance",
    CurrentValue = 0,
    Range = {0, 10},
    Callback = function(value)
        autodist = value
    end,
})

local AS_Enabled = false

FootballMagnents:CreateToggle({
    Title = "Auto Swat",
    Binding = false,
    CurrentValue = false,
    Callback = function(v)
        AS_Enabled = v
        while wait() do
            if AS_Enabled == true then
                local HRP = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                for i,v in pairs(workspace:GetChildren()) do
                    if v.Name == "Football" and v:IsA("BasePart") and ((v.Position - HRP.Position).Magnitude <= 30) == true then  
                        keypress(0x52)
                        keyrelease(0x52)
                    end
                end
            end
        end
    end,
})

FootballMagnents:CreateSlider({
    Title = "Mag Distance",
    CurrentValue = 0,
    Range = {0, 120},
    Callback = function(Value)
        if (getgenv().Football_Magnents) then
            getgenv().Football_DistanceCatch = Value
        end
    end,
})

QBAimbot:CreateToggle({
    Title = "Auto Lead Distance",
    Binding = false,
    CurrentValue = false,
    Callback = function(Value)
        if (getgenv().qbaimbotenabled) then
            getgenv().AutoLeadDistance = Value
        end
    end,
})

QBAimbot:CreateSlider({
    Title = "Custom Target Height Offset",
    CurrentValue = 0,
    Range = {0, 10},
    Callback = function(Value)
        if (getgenv().qbaimbotenabled) and (getgenv().AutoLeadDistance) then
            getgenv().customTargetHeight = Value
        end
    end,
})

QBAimbot:CreateSlider({
    Title = "Custom Lead Distance",
    CurrentValue = 0,
    Range = {0, 10},
    Callback = function(Value)
        if (getgenv().qbaimbotenabled) then
            getgenv().customLead = Value
        end
    end,
})

PullVector:CreateToggle({
    Title = "Enabled",
    Binding = false,
    CurrentValue = false,
    Callback = function(Value)
        getgenv().Pull_Vector = Value
    end
})

PullVector:CreateSlider({
    Title = "Pull Distance",
    CurrentValue = 0,
    Range = {0, 60},
    Callback = function(Value)
        if getgenv().Pull_Vector then
            getgenv().Football_Vector = Value
        end
    end,
})

Movement:CreateToggle({
    Title = "Custom WalkSpeed Enabled",
    Binding = false,
    CurrentValue = false,
    Callback = function(Value)
        getgenv().Custom_WalkSpeed = Value
    end,
})

Movement:CreateSlider({
    Title = "Custom WalkSpeed Amount",
    CurrentValue = 20,
    Range = {20, 29},
    Callback = function(Value)
      task.spawn(function()
          while task.wait() do
              if (getgenv().Custom_WalkSpeed) == true then
                  game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = Value
                end
            end
        end)
    end,
})

Movement:CreateToggle({
    Title = "Custom JumpPower Enabled",
    Binding = false,
    CurrentValue = false,
    Callback = function(Value)
        getgenv().Custom_JumpPower = Value
    end,
})

Movement:CreateSlider({
    Title = "Custom JumpPower Amount",
    CurrentValue = 50,
    Range = {50, 80},
    Callback = function(Value)
      task.spawn(function()
          while task.wait() do
              if (getgenv().Custom_JumpPower) == true then
                  game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = Value
                end
            end
        end)
    end,
})

task.spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
        for _, Value in pairs(workspace:GetChildren()) do
            if Value.Name == "Football" and Value:IsA("BasePart") then
                if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("CatchRight").Position - Value.Position).Magnitude <= Football_DistanceCatch and getgenv().Football_Magnents then
                    firetouchinterest(game:GetService("Players").LocalPlayer.Character:WaitForChild("CatchRight"), Value, 0)
                    firetouchinterest(game:GetService("Players").LocalPlayer.Character:WaitForChild("CatchRight"), Value, 1)
                    task.wait()
                    firetouchinterest(game:GetService("Players").LocalPlayer.Character:WaitForChild("CatchRight"), Value, 0)
                    firetouchinterest(game:GetService("Players").LocalPlayer.Character:WaitForChild("CatchRight"), Value, 1)
                end
            end
        end
    end)
end)

task.spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
        for _, Value in pairs(workspace:GetChildren()) do
            if Value.Name == "Football" and Value:IsA("BasePart") then
                local Direction = (Value.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Unit

                if game:GetService("Players").LocalPlayer:DistanceFromCharacter(Value.Position) <= getgenv().Football_Vector and getgenv().Pull_Vector then
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity = Direction * (getgenv().Football_Vector)
                end
            end
        end
    end)
end)

Misc:CreateToggle({
    Title = "Anti Admin",
    Binding = false,
    CurrentValue = false,
    Callback = function(v)
        if v then
            local moderators = {
                "2618937233503944727",
                "209187780079648778",
                "265544447129812992",
                "677964655821324329",
                "469043698110562304",
                "792145568586792979",
                "490537796940070915",
                "678699048844132362",
                "837514415480897607",
                "417141199564963840",
                "580140563295109148",
                "231225289718497281",
                "719258236930228346",
                "345362950380322829",
                "513196564236468226",
                "241945212463742986",
                "153379470164623360",
              }

             for index, value in pairs(game:GetService("Players"):GetPlayers()) do
                if table.find(moderators, value.UserId) then
                    game:GetService("Players").LocalPlayer:kick("An Admin has joined! Make sure to keep this enabled for extra caution next time!")
                end
            end
        end
    end,
})

local Tracers = {}
local DistanceLabels = {}
local tracerEnabled = false

function AttachBall(Ball)
    local RootPart = Players.LocalPlayer.Character and Players.LocalPlayer..Character.PrimaryPart

    if RootPart and Ball then
        local Tracer = Drawing.new("Line")
        Tracer.Visible = false
        Tracer.Color = Color3.fromRGB(255, 0, 0)
        Tracer.Thickness = 1
        Tracer.Transparency = 1

        local TextLabel = Drawing.new("Text")
        TextLabel.Text = ""
        TextLabel.Transparency = 1
        TextLabel.Visible = false
        TextLabel.Color = Color3.fromRGB(255, 0, 0)
        TextLabel.Size = 25

        local con
        con = game:GetService("RunService").RenderStepped:Connect(function()
            if RootPart.Parent and Ball.Parent and tracerEnabled then
                local Vector, OnScreen = game.Workspace.CurrentCamera:WorldToViewportPoint(Ball.Position)
                local Vector2_, OnScreen2 = game.Workspace.CurrentCamera:WorldToViewportPoint(RootPart.Position)
                local Distance = (RootPart.Position - Ball.Position).Magnitude

                if OnScreen and OnScreen2 then
                    Tracer.From = Vector2.new(Vector2_.X, Vector2_.Y)
                    Tracer.To = Vector2.new(Vector.X, Vector.Y)
                    Tracer.Visible = true
                    TextLabel.Visible = true

                    TextLabel.Text = tostring(math.floor(Distance)) .. " studs away"
                    TextLabel.Position = Vector2.new(Vector.X, Vector.Y)

                    if Distance <= 50 then
                        TextLabel.Color = Color3.fromRGB(0, 255, 0)
                        Tracer.Color = Color3.fromRGB(0, 255, 0)
                    else
                        TextLabel.Color = Color3.fromRGB(255, 0, 0)
                        Tracer.Color = Color3.fromRGB(255, 0, 0)
                    end
                else
                    Tracer.Visible = false
                    TextLabel.Visible = false
                end
            else
                con:Disconnect()
                Tracer.Visible = false
                TextLabel.Visible = false
            end
        end)
        table.insert(Tracers, Tracer)
        table.insert(DistanceLabels, TextLabel)
    end
end


workspace.ChildAdded:Connect(function(child)
    if child.Name == "Football" then
        if tracerEnabled then
            AttachBall(child)
        end
    end
end)

Misc:CreateToggle({
    Title = "Ball Tracer",
    Binding = false,
    CurrentValue = false,
    Callback = function(enabled)
        tracerEnabled = enabled

        if not enabled then
            for _, tracer in ipairs(Tracers) do
                    tracer:Remove()
                end

                for _, label in ipairs(DistanceLabels) do
                    label:Remove()
                end
                Tracers = {}
                DistanceLabels = {}
        else
            for _, child in ipairs(workspace:GetChildren()) do
                if child.Name == "Football" then
                    AttachBall(child)
                end
            end
        end
    end,
})

Misc:CreateToggle({
    Title = "Change Weather To Rain",
    Binding = false,
    CurrentValue = false,
    Callback = function(value)
        IsSnow = value 

        if IsSnow  == true then
            for i,v in pairs(workspace.SkyWeather:GetChildren()) do
                if v.Name == "Snow" then
                    v.Enabled = true
                end
            end
        else
            for i,v in pairs(workspace.SkyWeather:GetChildren()) do
                if v.Name == "Snow" then
                    v.Enabled = false
                end
            end
        end
    end,
})

Misc:CreateToggle({
    Title = "FPS Boost",
    Binding = false,
    CurrentValue = false,
    Callback = function(v)
        local decalsyeeted = v
        local g = game
        local w = g.Workspace
        local l = g.Lighting
        local t = w.Terrain
        t.WaterWaveSize = 0
        t.WaterWaveSpeed = 0
        t.WaterReflectance = 0
        t.WaterTransparency = 0
        l.GlobalShadows = false
        l.FogEnd = 9e9
        l.Brightness = 0
        settings().Rendering.QualityLevel = "Level01"
        for i, v in pairs(g:GetDescendants()) do
            if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
                v.Material = "Plastic"
                v.Reflectance = 0
            elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
                v.Transparency = 1
            elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                v.Lifetime = NumberRange.new(0)
            elseif v:IsA("Explosion") then
                v.BlastPressure = 1
                v.BlastRadius = 1
            elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") then
                v.Enabled = false
            elseif v:IsA("MeshPart") then
                v.Material = "Plastic"
                v.Reflectance = 0
                v.TextureID = 10385902758728957
            end
        end
        for i, e in pairs(l:GetChildren()) do
          if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
                e.Enabled = false
            end
        end
    end,
})


Misc:CreateToggle({
  Title = "Underground",
    Binding = false,
    CurrentValue = false,
    Callback = function(state)
        state = state
        local function toggleField(state)
            local model = game.Workspace.Models.Field.Grass
            local transparency = state and 1 or 0
            for _, part in pairs(model:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CanCollide = not state
                    part.Transparency = transparency
                end
            end

            if state then
                local platform = Instance.new("Part")
                platform.Size = Vector3.new(500, 0.001, 500)
                platform.Position = Vector3.new(10.3562937, -2.51527438, 30.4708614)
                platform.Anchored = true
                platform.Parent = game.Workspace

                local colors = {
                    BrickColor.new("Light gray")
                }

                local currentIndex = 1

                while state do
                    platform.BrickColor = colors[currentIndex]
                    currentIndex = currentIndex % #colors + 1

                    wait(1)

                end
            end
        end

        toggleField(state)

        local player = game.Players.LocalPlayer
        local character = player.Character

        local function setPlayerTransparency(transparency)
            for _, part in ipairs(character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.Transparency = transparency
                end
            end
        end

        setPlayerTransparency(0.6)
    end,
})

local LocalPlayer = game:GetService("Players").LocalPlayer
local dv = false
local dvdist = 15

local function dv()
    for _, Value in pairs(workspace:GetChildren()) do
        if Value.Name == "Football" and Value:IsA("BasePart") then
            local distance = (LocalPlayer.Character.HumanoidRootPart.Position - Value.Position).Magnitude

            if distance <= dvdist then
                local direction = (Value.Position - LocalPlayer.Character.HumanoidRootPart.Position).Unit
                LocalPlayer.Character.HumanoidRootPart.Velocity = direction * 15
            end
        end
    end
end

LocalPlayer:GetMouse().KeyDown:Connect(function(Key)
    if Key == string.lower("e") then
        if dv then
            dv()
        end
    end
end)


Physics:CreateToggle({
    Title = "Dive Vector",
    Binding = false,
    CurrentValue = false,
    Callback = function(v)
        dv = v
    end,
})

Physics:CreateSlider({
    Title = "Dive Vector Distance",
    CurrentValue = 0,
    Range = {0, 15},
    Callback = function(v)
        dvdist = v
    end,
})


--> QB Aimbot

-- Services
local players = game:GetService("Players")
local userInputService = game:GetService("UserInputService")
local replicatedStorage = game:GetService("ReplicatedStorage")
local remotes = replicatedStorage:FindFirstChild("Remotes")
local characterSoundEvent = remotes:FindFirstChild("CharacterSoundEvent")
local player = players.LocalPlayer
local runService = game:GetService("RunService")


-- Functions

local Players = game:GetService("Players")
local Mouse = Players.LocalPlayer:GetMouse()
local numTeleports = 30 -- Define the number of teleports

local function beamProjectile(g, v0, x0, t1) -- easy egomoose copy!
	-- calculate the bezier points
	local c = 0.5*0.5*0.5;
	local p3 = 0.5*g*t1*t1 + v0*t1 + x0;
	local p2 = p3 - (g*t1*t1 + v0*t1)/3;
	local p1 = (c*g*t1*t1 + 0.5*v0*t1 + x0 - c*(x0+p3))/(3*c) - p2;

	-- the curve sizes
	local curve0 = (p1 - x0).magnitude;
	local curve1 = (p2 - p3).magnitude;

	-- build the world CFrames for the attachments
	local b = (x0 - p3).unit;
	local r1 = (p1 - x0).unit;
	local u1 = r1:Cross(b).unit;
	local r2 = (p2 - p3).unit;
	local u2 = r2:Cross(b).unit;
	b = u1:Cross(r1).unit;

	local cf1 = CFrame.new(
		x0.x, x0.y, x0.z,
		r1.x, u1.x, b.x,
		r1.y, u1.y, b.y,
		r1.z, u1.z, b.z
	)

	local cf2 = CFrame.new(
		p3.x, p3.y, p3.z,
		r2.x, u2.x, b.x,
		r2.y, u2.y, b.y,
		r2.z, u2.z, b.z
	)

	return curve0, -curve1, cf1, cf2;
end



-- Start

local plr = game.Players.LocalPlayer
local rs = game:GetService("RunService")





local enabled = false
local autoAngle = false -- Auto Angle
local autoChooseThrowType = false -- Auto Choose Throw Type
local showBeam = false -- Determines if to show the beam projectile
local showCards = false -- Determines if to show cards or not
local throwHeightOffset = 0
local straightenThrowDirection = false -- Determines if to straighten the move direction
local leadDistance = 0 -- Lead Distance (self-explanatory)
local beamColor = Color3.fromRGB(255, 73, 128) -- idk if onyx ui lib has color picker but yuh
local throwData = {
	power = 0,
	direction = Vector3.new(0, 0, 0),
	angle = 40
}
task.spawn(function()
	--// variables
    local plr = game:GetService('Players').LocalPlayer
    local mouse = plr:GetMouse()
    local Camera = workspace.CurrentCamera;
    local CoreGui = game:GetService("CoreGui")
    local UIS = game:GetService("UserInputService");
    local RS = game:GetService("RunService");
    local TS = game:GetService("TweenService");
    local spr = RS:IsStudio() and require(workspace.spr) or loadstring(game:HttpGet("https://raw.githubusercontent.com/Fraktality/spr/master/spr.lua"))()
	local gui = game:GetObjects("rbxassetid://13608686945")[1]
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
	local throwTypes = {"Dime", "Mag", "Jump", "Bullet", "Slant", "Fold"}
	local throwType = "Dime"
	local beam, a0, a1 = Instance.new("Beam"), Instance.new("Attachment"), Instance.new("Attachment")
	local hooked = {}
	local locked = false
	local target = nil
	local throwTypeLead = {
		["Dime"] = 6,
		["Mag"] = 9,
		["Bullet"] = 4,
		["Slant"] = 3.5,
		["Fold"] = 9
	}
	local throwTypeSwitch = {
		["Dime"] = "Mag",
		["Mag"] = "Bullet",
		["Bullet"] = "Slant",
		["Slant"] = "Fold",
		["Fold"] = "Dime"
	}
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

	local function beamProjectile(g, v0, x0, t1) -- easy egomoose copy!
		-- calculate the bezier points
		local c = 0.5*0.5*0.5;
		local p3 = 0.5*g*t1*t1 + v0*t1 + x0;
		local p2 = p3 - (g*t1*t1 + v0*t1)/3;
		local p1 = (c*g*t1*t1 + 0.5*v0*t1 + x0 - c*(x0+p3))/(3*c) - p2;

		-- the curve sizes
		local curve0 = (p1 - x0).magnitude;
		local curve1 = (p2 - p3).magnitude;

		-- build the world CFrames for the attachments
		local b = (x0 - p3).unit;
		local r1 = (p1 - x0).unit;
		local u1 = r1:Cross(b).unit;
		local r2 = (p2 - p3).unit;
		local u2 = r2:Cross(b).unit;
		b = u1:Cross(r1).unit;

		local cf1 = CFrame.new(
			x0.x, x0.y, x0.z,
			r1.x, u1.x, b.x,
			r1.y, u1.y, b.y,
			r1.z, u1.z, b.z
		)

		local cf2 = CFrame.new(
			p3.x, p3.y, p3.z,
			r2.x, u2.x, b.x,
			r2.y, u2.y, b.y,
			r2.z, u2.z, b.z
		)

		return curve0, -curve1, cf1, cf2;
	end

	local solveForT = function(target, power, angle)
		local distance = (target.Head.Position - player.Character.Head.Position).Magnitude
		local special = {
			["Bullet"] = function()
				return distance / 95
			end,
			["Fold"] = function()
				return distance / 105
			end,
		}
		local default = function()
			local assumedDirection = (target.Head.Position - player.Character.Head.Position).Unit
			local speed = (assumedDirection * power).Magnitude
			local t = (distance / speed) * (angle / 22)
			return t
		end
		return (special[throwType] or default)()
	end

	local solveForAngle = function(distance)
		local special = {
			["Bullet"] = function()
				return 15
			end,
					["Fold"] = function()
				return 25
			end,
			["Slant"] = function()
				return math.clamp(distance / 4, 20, 45)
			end,
		}
		local default = function()
			return math.clamp(distance / 2.5, 20, 45)
		end
		return (special[throwType] or default)()
	end

	local function hookFootball(f)
		local remoteEvent = f:WaitForChild("Handle"):WaitForChild("RemoteEvent")
		hooked[remoteEvent] = true
	end

	local function initChar(char)
		char.ChildAdded:Connect(function(c)
			task.wait()
			if c:IsA("Tool") then
				hookFootball(c)
			end
		end)
	end

	local function findRoute(md)
		local routeFunctions = {
			["Dime"] = function()
				return not checkMovingTowardsQB() and not checkIsSideways() and not checkIsDiagonal()
			end,
			["Slant"] = function()
				return not checkMovingTowardsQB() and checkIsSideways()
			end,
			["Fold"] = function()
				return checkMovingTowardsQB() and checkIsDiagonal()
			end,
			["Comeback"] = function()
				return checkMovingTowardsQB() and not checkIsSideways()
			end,
			["Post"] = function()
				return not checkMovingTowardsQB() and checkIsDiagonal()
			end,
			["Still"] = function(md)
				return md.Magnitude <= 0
			end,
		}
		local route = nil
		for r, func in pairs(routeFunctions) do
			route = func(md) and r
			if route then break end
		end
		return route or "Unknown"
	end

	initChar(player.Character)
	player.CharacterAdded:Connect(initChar)

	userInputService.InputBegan:Connect(function(input, gp)
		if player.PlayerGui:FindFirstChild("BallGui") and not gp then
			if input.KeyCode == Enum.KeyCode.Q then
				locked = not locked
			elseif input.KeyCode == Enum.KeyCode.Z then
				throwType = throwTypeSwitch[throwType]
			elseif input.KeyCode == Enum.KeyCode.R then
				while userInputService:IsKeyDown(Enum.KeyCode.R) do
					throwData.angle += 5
					throwData.angle = math.clamp(throwData.angle, 5, 90)
					task.wait(5/30)
				end
			elseif input.KeyCode == Enum.KeyCode.F then
				while userInputService:IsKeyDown(Enum.KeyCode.F) do
					throwData.angle -= 5
					throwData.angle = math.clamp(throwData.angle, 5, 90)
					task.wait(5/30)
				end
			end
		end
	end)
	while true do
		task.wait()
		local s, e = pcall(function()
			if not locked then
				target = findtarget()
			end
			gui.Enabled = enabled and showCards and player.PlayerGui:FindFirstChild("BallGui")
			beam.Enabled = showBeam and enabled and player.PlayerGui:FindFirstChild("BallGui")
			if player.PlayerGui:FindFirstChild("BallGui") and target and player.Character:FindFirstChild("Head") then
				local distance = (player.Character.Head.Position - target.Head.Position).Magnitude
				if autoAngle then
					throwData.angle = solveForAngle(distance)
				end
				if autoChooseThrowType then
					if checkMovingTowardsQB() and checkIsDiagonal() then
						throwType = "Fold"
					elseif not checkIsSideways() and not checkMovingTowardsQB() then
						local dis = findClosestDistanceToDB()
						if dis > 5 then
							throwType = "Dime"
						else
							throwType = "Mag"
						end
					elseif checkIsSideways() then
						if distance < 135 then
							throwType = "Bullet"
						else
							throwType = "Slant"
						end
					elseif checkMovingTowardsQB() then
						throwType = "Bullet"
					else
						throwType = "Dime"
					end
				end

if throwType == "Fold" then
    throwHeightOffset = 6 else
    throwHeightOffset = 0
end
				local moveDirection = (straightenThrowDirection and straightenMoveDirection(getMoveDirection(target), target.Head.Position)) or getMoveDirection(target)
				local power = findPower(target.Head.Position)
				local t = solveForT(target, power, throwData.angle)
				local leadDistance = throwTypeLead[throwType] + leadDistance
				local predictedPosition = target.Head.Position + Vector3.new(0, throwHeightOffset, 0) + (moveDirection * 20 * t) + moveDirection * leadDistance
				local _, dir, power = calculateVelocity(player.Character.Head.Position, predictedPosition, t)
				local c0, c1, cf1, cf2 = beamProjectile(Vector3.new(0, -28, 0), dir * power, player.Character.Head.Position + dir * 5, t * 1.75)
				beam.CurveSize0 = c0
				beam.CurveSize1 = c1
				beam.Color = ColorSequence.new(beamColor)
				a0.CFrame = a0.Parent.CFrame:Inverse() * cf1
				a1.CFrame = a1.Parent.CFrame:Inverse() * cf2
				gui.Main.AngleCard.Val.Text = math.round(throwData.angle * 100) / 100
				gui.Main.PowerCard.Val.Text = throwData.power
				gui.Main.PassDurationCard.Val.Text = tostring(math.round(t * 100) / 100).."s"
				gui.Main.ModeCard.Val.Text = throwType
				gui.Main.RouteCard.Val.Text = findRoute(moveDirection)
				throwData.direction = dir; throwData.power = power
			end
		end)
		if not s then
			warn(e)
		end
	end
end)





QBAimbot:CreateToggle({
    Title = "qb aimbot",
    Binding = false,
    CurrentValue = false,
    Callback = function(v)
	enabled = v
end})


QBAimbot:CreateToggle({
    Title = "auto angle",
    Binding = false,
    CurrentValue = false,
    Callback = function(v)
	autoAngle = v
end})

QBAimbot:CreateToggle({
    Title = "Auto throw type",
    Binding = false,
    CurrentValue = false,
    Callback = function(v)
	autoChooseThrowType = v
end})

QBAimbot:CreateToggle({
    Title = "anti wobble",
    Binding = false,
    CurrentValue = false,
    Callback = function(v)
	straightenThrowDirection = v
end})

QBAimbot:CreateSlider({
    Title = "lead",
    CurrentValue = 0,
    Range = {0, 10},
    Callback = function(v)
	leadDistance = v
end})



QBAimbot:CreateToggle({
    Title = "show beam",
    Binding = false,
    CurrentValue = true,
    Callback = function(v)
	showBeam = v
end})

QBAimbot:CreateToggle({
    Title = "show card",
    Binding = false,
    CurrentValue = true,
    Callback = function(v)
	showCards = v
end})
