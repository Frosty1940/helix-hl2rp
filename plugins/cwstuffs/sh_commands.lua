do
	local COMMAND = {}
	COMMAND.adminOnly = true

	function COMMAND:OnRun(client, arguments)
		local players = player.GetAll()
		for k, v in pairs(players) do
			v:ConCommand("r_cleardecals")
			v:Notify(client:GetName().."님이 모든 데칼을 지웠습니다!")
		end
	end

	ix.command.Add("clearDecals", COMMAND)
end
