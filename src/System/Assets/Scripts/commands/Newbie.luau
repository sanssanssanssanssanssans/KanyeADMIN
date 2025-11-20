return function(plr, args)
	local player = plr
	local properties = {
				HeadColor = BrickColor.new("Bright yellow").Color,
				LeftArmColor = BrickColor.new("Bright yellow").Color,
				RightArmColor = BrickColor.new("Bright yellow").Color,
				LeftLegColor = BrickColor.new("Br. yellowish green").Color,
				RightLegColor = BrickColor.new("Br. yellowish green").Color,
				TorsoColor = BrickColor.new("Bright blue").Color,
				Pants = 0, Shirt = 0, LeftArm = 0, RightArm = 0,
				LeftLeg = 0, RightLeg = 0, Torso = 0
	}
	local humanoid = player.Character and player.Character:FindFirstChildOfClass("Humanoid")
	if humanoid then
		local description = humanoid:GetAppliedDescription()

		for k, player in properties do
			description[k] = player
		end

		task.defer(humanoid.ApplyDescription, humanoid, description, Enum.AssetTypeVerification.Always)
	end
end
