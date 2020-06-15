
FACTION.name = "Vortigaunt"
FACTION.description = "An extra-dimensional creature from Xen."
FACTION.color = Color(77, 158, 154, 255)
-- FACTION.pay = 5
FACTION.isDefault = false
FACTION.models = {"models/vortigaunt_slave.mdl"}

function FACTION:OnCharacterCreated(client, character)
	local inventory = character:GetInventory()

	-- inventory:Add("smg1", 1)
end

FACTION_VORT = FACTION.index