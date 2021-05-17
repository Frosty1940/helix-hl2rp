ITEM.name = "Coffee"
ITEM.model = "models/bioshockinfinite/xoffee_mug_closed.mdl"
ITEM.description = "itemCoffeeDesc"
ITEM.thirst = 50
ITEM.price = 20

ITEM:Hook("Eat", function(item)
	local client = item.player
	
	client:EmitSound("npc/barnacle/barnacle_gulp2.wav")

	for i = 1, 5 do
		timer.Simple(i, function()
			client:SetHealth(math.Clamp(client:Health() + 2, 0, client:GetMaxHealth()))
		end)
	end
end)