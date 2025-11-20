return function(plr, args)
	local player = plr
	local properties = {
		HeadColor = BrickColor.new("Dark grey").Color,
		LeftArmColor = BrickColor.new("Dark grey").Color,
		RightArmColor = BrickColor.new("Dark grey").Color,
		LeftLegColor = BrickColor.new("Dark grey").Color,
		RightLegColor = BrickColor.new("Dark grey").Color,
		TorsoColor = BrickColor.new("Dark grey").Color,
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
