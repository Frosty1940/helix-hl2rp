ITEM.name = "Chocolate Brownie"
ITEM.model = "models/dead rising 2/brownie.mdl"
ITEM.description = "itemBrownieDesc"
ITEM.hunger = 25
ITEM.thirst = -3
ITEM.price = 8

ITEM:Hook("Eat", function(item)
	local client = item.player
	
	client:EmitSound("npc/barnacle/barnacle_gulp2.wav")

	for i = 1, 10 do
		timer.Simple(i, function()
			client:SetHealth(math.Clamp(client:Health() + 1, 0, client:GetMaxHealth()))
		end)
	end
end)