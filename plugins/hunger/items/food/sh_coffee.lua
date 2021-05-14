ITEM.name = "Coffee"
ITEM.model = "models/shibcuppy.mdl"
ITEM.description = "itemCoffeeDesc"
ITEM.skin = 1
ITEM.thirst = 25
ITEM.price = 10

ITEM:Hook("Eat", function(item)
	local client = item.player
	
	client:EmitSound("npc/barnacle/barnacle_gulp2.wav")

	for i = 1, 5 do
		timer.Simple(i, function()
			client:SetHealth(math.Clamp(client:Health() + 2, 0, client:GetMaxHealth()))
		end)
	end
end)