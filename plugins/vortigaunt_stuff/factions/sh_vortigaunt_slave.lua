
FACTION.name = "Enslaved Vortigaunt"
FACTION.description = "vortigauntDesc"
FACTION.color = Color(77, 158, 154, 255)
FACTION.models = {"models/vortigaunt_slave.mdl"}
FACTION.weapons = {"swep_vortigaunt_sweep"}
FACTION.isDefault = true
FACTION.isGloballyRecognized = false

function FACTION:OnTransfered(client)
	local character = client:GetCharacter()

	character:SetModel("models/vortigaunt_slave.mdl")
end

FACTION_ENSLAVEDVORTIGAUNT = FACTION.index
