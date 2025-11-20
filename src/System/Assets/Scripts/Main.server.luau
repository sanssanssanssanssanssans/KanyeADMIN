local module = require(script.Parent.Parent.Parent.makeCmds)

game.Players.PlayerAdded:Connect(function(plr)
	plr.Chatted:Connect(function(msg)
		if msg:sub(1, #module.prefix) == module.prefix then
			local cmds = msg:sub(#module.prefix + 1)
			local args = {}

			for word in cmds:gmatch("%S+") do
				table.insert(args, word)
			end

			local cmdName = args[1]
			local cmdFunc = module.cmds[cmdName]

			if cmdFunc then
				cmdFunc(plr, args) 
			else
				print("Unknown command: " .. cmdName)
			end
		end
	end)
end)
