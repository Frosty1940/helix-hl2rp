ITEM.name = "Noodles"
ITEM.model = "models/mosi/fallout4/props/food/noodles.mdl"
ITEM.description = "itemNoodlesDesc"
ITEM.hunger = 35
ITEM.thirst = -10
ITEM.price = 6

ITEM:Hook("Eat", function(item)
	local client = item.player
	
	client:EmitSound("npc/barnacle/barnacle_gulp2.wav")

	for i = 1, 10 do
		timer.Simple(i, function()
			client:SetHealth(math.Clamp(client:Health() + 1, 0, client:GetMaxHealth()))
		end)
	end
end)