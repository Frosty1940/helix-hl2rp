ITEM.name = "Chocolate"
ITEM.model = "models/bioshockinfinite/hext_candy_chocolate.mdl"
ITEM.description = "itemChocolateDesc"
ITEM.hunger = 15
ITEM.price = 8
ITEM.thirst = -7

ITEM:Hook("Eat", function(item)
	local client = item.player
	
	client:EmitSound("npc/barnacle/barnacle_gulp2.wav")

	for i = 1, 5 do
		timer.Simple(i, function()
			client:SetHealth(math.Clamp(client:Health() + 1, 0, client:GetMaxHealth()))
		end)
	end
end)