ITEM.name = "Melon"
ITEM.model = "models/hlvr/food/watermelon01.mdl"
ITEM.description = "itemMelonDesc"
ITEM.price = 6
ITEM.hunger = 20
ITEM.third = 30

ITEM:Hook("Eat", function(item)
	local client = item.player
	
	client:EmitSound("npc/barnacle/barnacle_gulp2.wav")
	
	for i = 1, 5 do
		timer.Simple(i, function()
			client:SetHealth(math.Clamp(client:Health() + 1, 0, client:GetMaxHealth()))
		end)
	end
end)