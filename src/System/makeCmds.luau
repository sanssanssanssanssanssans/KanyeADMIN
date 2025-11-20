local cmds = {}

local cmdsFolder = script.Parent.Assets.Scripts.commands

for _, sc in ipairs(cmdsFolder:GetChildren()) do
	if sc:IsA("ModuleScript") then
		local cmdName = sc.Name 
		cmds[cmdName] = require(sc) 
	end
end

return {
	prefix = require(script.Parent.Parent).KanyeConfig, 
	cmds = cmds   
}
