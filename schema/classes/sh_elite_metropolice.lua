CLASS.name = "Elite Metropolice"
CLASS.faction = FACTION_MPF
CLASS.isDefault = false

function CLASS:CanSwitchTo(client)
	local name = client:Name()
	local bStatus = false

	for k, v in ipairs({ "EpU", "OfC", "DvL", "SeC", "CmD", }) do
		if (Schema:IsCombineRank(name, v)) then
			bStatus = true

			break
		end
	end

	return bStatus
end

CLASS_EMP = CLASS.index
