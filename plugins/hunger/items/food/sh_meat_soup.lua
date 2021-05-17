ITEM.name = "Meat Soup"
ITEM.model = "models/mosi/fallout4/props/food/iguanasoup.mdl"
ITEM.description = "itemMeatSoupDesc"
ITEM.hunger = 40
ITEM.thirst = 10
ITEM.price = 7

ITEM:Hook("Eat", function(item)
	local client = item.player
	
	client:EmitSound("npc/barnacle/barnacle_gulp2.wav")
	for i = 1, 5 do
		timer.Simple(i, function()
			client:SetHealth(math.Clamp(client:Health() + 1, 0, client:GetMaxHealth()))
		end)
	end
end)