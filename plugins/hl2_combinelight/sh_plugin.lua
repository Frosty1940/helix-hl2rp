PLUGIN.name = "Combine Light"
PLUGIN.author = "robinkooli, Frosty"
PLUGIN.description = "Portable light sources used to illuminate dark areas in support of Combine operations."

ix.lang.AddTable("english", {
	clplaced = "You have created a Combine Light.",
})
ix.lang.AddTable("korean", {
	clplaced = "콤바인 조명을 설치했습니다.",
})

ix.command.Add("PlaceCL", {
	adminOnly = true,
	OnRun = function(self, client)
		local entity = scripted_ents.Get("hl2_combinelight"):SpawnFunction(client, client:GetEyeTraceNoCursor())

		if (IsValid(entity)) then
			client:NotifyLocalized("clplaced")
		end
	end
})
