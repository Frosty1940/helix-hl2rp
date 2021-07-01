ITEM.name = "Pizza"
ITEM.model = "models/griim/foodpack/pepperonipizza.mdl"
ITEM.description = "itemPizzaDesc"
ITEM.hunger = 100
ITEM.thirst = -10
ITEM.price = 12

ITEM:Hook("Eat", function(item)
	local client = item.player
	
	client:EmitSound("npc/barnacle/barnacle_gulp2.wav")

	for i = 1, 10 do
		timer.Simple(i, function()
			client:SetHealth(math.Clamp(client:Health() + 1, 0, client:GetMaxHealth()))
		end)
	end
end)