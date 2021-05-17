ITEM.name = "Vegetable Soup"
ITEM.model = "models/mosi/fallout4/props/food/vegetablesoup.mdl"
ITEM.description = "itemVegetableSoupDesc"
ITEM.hunger = 30
ITEM.thirst = 10
ITEM.price = 5

ITEM:Hook("Eat", function(item)
	local client = item.player
	
	client:EmitSound("npc/barnacle/barnacle_gulp2.wav")
	for i = 1, 5 do
		timer.Simple(i, function()
			client:SetHealth(math.Clamp(client:Health() + 1, 0, client:GetMaxHealth()))
		end)
	end
end)