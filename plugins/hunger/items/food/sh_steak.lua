ITEM.name = "Steak"
ITEM.model = "models/mosi/fallout4/props/food/moleratsteak.mdl"
ITEM.description = "itemSteakDesc"
ITEM.hunger = 70
ITEM.thirst = -10
ITEM.price = 15

ITEM:Hook("Eat", function(item)
	local client = item.player
	
	client:EmitSound("npc/barnacle/barnacle_gulp2.wav")

	for i = 1, 5 do
		timer.Simple(i, function()
			client:SetHealth(math.Clamp(client:Health() + 1, 0, client:GetMaxHealth()))
		end)
	end	
end)