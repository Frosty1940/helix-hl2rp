ITEM.name = "Breen's Water"
ITEM.model = "models/props_junk/PopCan01a.mdl"
ITEM.description = "itemWaterDesc"
ITEM.thirst = 50
ITEM.price = 15
ITEM.empty = "water_empty"

ITEM:Hook("Eat", function(item)
	local client = item.player
	
	client:EmitSound("npc/barnacle/barnacle_gulp2.wav")

	for i = 1, 5 do
		timer.Simple(i, function()
			client:SetHealth(math.Clamp(client:Health() + 2, 0, client:GetMaxHealth()))
		end)
	end
end)