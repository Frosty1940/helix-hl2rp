CLASS.name = "Overwatch Soldier"
CLASS.faction = FACTION_OTA
CLASS.isDefault = true

function CLASS:CanSwitchTo(client)
	local name = client:Name()
	local bStatus = false

	for k, v in ipairs({ "OWS", "SGS", }) do
		if (Schema:IsCombineRank(name, v)) then
			bStatus = true

			break
		end
	end

	return bStatus
end

CLASS_OWS = CLASS.index
