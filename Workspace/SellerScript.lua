local part = script.Parent
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local d = false

script.Parent.Touched:Connect(function(hit)
	local humanoid = hit.Parent:FindFirstChild("Humanoid")
	local user = game.Players:WaitForChild(hit.Parent.Name)
	if d == false then
		d = true
		local PlrStats = user.PlrStats
		local MithrilCount = PlrStats.MithrilCount.Value
		local Money = PlrStats.Money.Value
		script.Parent.BrickColor = BrickColor.new(255, 0, 0, "Really Red")
		print(MithrilCount)
		PlrStats.Money.Value = PlrStats.Money.Value + PlrStats.MithrilCount.Value * 10
		print("Successfully changed color to red.")	
		wait(0.1)
		PlrStats.MithrilCount.Value = 0
		wait (2)
		script.Parent.BrickColor = BrickColor.new(0, 255, 0, "Lime Green")
		print("Successfully changed color to green")
		d = false
	end
end)

