-- Anti AFK script suitable for putting in autoexec.
-- This script create by MaxproGlitcher#6199

while not game:IsLoaded() do wait() end

repeat wait() until game.Players.LocalPlayer.Character

Players = game:GetService("Players")

local GC = getconnections or get_signal_cons
if GC then
	for i,v in pairs(GC(Players.LocalPlayer.Idled)) do
		if v["Disable"] then v["Disable"](v)
		elseif v["Disconnect"] then v["Disconnect"](v)
		end
	end
else
  Players.LocalPlayer.Idled:Connect(function()
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
  end)
end

game:GetService("StarterGui"):SetCore("SendNotification",{
  Title = " ANTI-AFK EXERCUTER", 
  Text = "YIPEEEEE", 
  Icon = "rbxassetid://11823384169",
  Duration = 15
})

game.StarterGui:SetCore('SendNotification', { Title = 'Anti-AFK'; Text = 'Script create by VexTheVex Anti-AFK activated'; })
game.StarterGui:SetCore('SendNotification', { Title = 'Anti-AFK'; Text = 'Version 1.0'; })
