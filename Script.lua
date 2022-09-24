local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Zone Hub | Muscle Legends ", HidePremium = false, SaveConfig = true, ConfigFolder = "ZoneHub", IntroEnabled = true, IntroText = "Zone Hub"})

--Values
_G.AutoTrain = true
_G.AutoRebirth = true

--Functions

function AutoTrain()
	while _G.AutoTrain == true do
		Wait(0)
		local args = {
			[1] = "rep"
		}
		
		game:GetService("Players").LocalPlayer.muscleEvent:FireServer(unpack(args))
		
	end
end

function AutoRebirth()
	while _G.AutoRebirth == true do
		wait(0)
		local args = {
			[1] = "rebirthRequest"
		}
		
		game:GetService("ReplicatedStorage").rEvents.rebirthRemote:InvokeServer(unpack(args))
	end
end

--Tabs

local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "AutoFarm"
})
Tab:AddToggle({
	Name = "Auto Train",
	Default = false,
	Callback = function(Value)
		_G.AutoTrain = Value
		AutoTrain()
	end    
})
Tab:AddToggle({
	Name = "Auto Rebirth",
	Default = false,
	Callback = function(Value)
		_G.AutoRebirth = Value
		AutoRebirth()
	end    
})










OrionLib:Init()
