
ITEM.name = "Metropolice Supplements"
ITEM.model = Model("models/props_lab/jar01b.mdl")
ITEM.description = "metropoliceSupplementsDesc"
ITEM.factions = {FACTION_MPF, FACTION_OTA}
ITEM.hunger = 100

ITEM:Hook("Eat", function(item)
	local client = item.player
	
	client:EmitSound("npc/antlion_grub/squashed.wav", 75, 150, 0.25)

	for i = 1, 10 do
		timer.Simple(i, function()
			client:SetHealth(math.Clamp(client:Health() + 1, 0, client:GetMaxHealth()))
		end)
	end	
end)