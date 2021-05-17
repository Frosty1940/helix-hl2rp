ITEM.name = "Watermelon"
ITEM.model = "models/props_junk/watermelon01.mdl"
ITEM.description = "itemMelonDesc"
ITEM.price = 20
ITEM.hunger = 30
ITEM.thirst = 30

ITEM:Hook("Eat", function(item)
	local client = item.player
	
	client:EmitSound("npc/barnacle/barnacle_gulp2.wav")
	
	for i = 1, 5 do
		timer.Simple(i, function()
			client:SetHealth(math.Clamp(client:Health() + 1, 0, client:GetMaxHealth()))
		end)
	end
end)