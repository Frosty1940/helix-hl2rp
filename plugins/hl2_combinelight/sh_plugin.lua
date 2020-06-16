PLUGIN.name = "Combine Light"
PLUGIN.author = "robinkooli, Frosty"
PLUGIN.description = "Portable light sources used to illuminate dark areas in support of Combine operations."

ix.lang.AddTable("english", {
	clplaced = "You have created a Combine Light.",
	comlightDesc = "Portable light sources used to illuminate dark areas in support of Combine operations.",
})
ix.lang.AddTable("korean", {
	["Combine Light"] = "콤바인 조명",
	comlightDesc = "어두운 곳에서 콤바인 작전을 수행할 수 있도록 돕는 이동식 광원입니다.",
	clplaced = "콤바인 조명을 설치했습니다.",
	Place = "놓기",
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
