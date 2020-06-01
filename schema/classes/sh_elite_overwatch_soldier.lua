CLASS.name = "Elite Overwatch Soldier"
CLASS.faction = FACTION_OTA
CLASS.isDefault = false

function CLASS:OnSet(client)
	local character = client:GetCharacter()

	if (character) then
		character:SetModel("models/characters/combine_soldier/jqblk/combine_s_super.mdl")
	end
end

CLASS_EOW = CLASS.index
