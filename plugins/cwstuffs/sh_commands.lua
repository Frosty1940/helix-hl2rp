do
	local COMMAND = {}
	COMMAND.adminOnly = true

	function COMMAND:OnRun(client, arguments)
		local players = player.GetAll()
		for k, v in pairs(players) do
			v:ConCommand("r_cleardecals")
			v:NotifyLocalized("decalsCleared", client:GetName())
		end
	end

	ix.command.Add("clearDecals", COMMAND)
end
