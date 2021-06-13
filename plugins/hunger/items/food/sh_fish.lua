ITEM.name = "Canned Fish"
ITEM.model = "models/bioshockinfinite/cardine_can_open.mdl"
ITEM.description = "itemFishDesc"
ITEM.hunger = 50
ITEM.thirst = -10
ITEM.price = 12

ITEM:Hook("Eat", function(item)
	local client = item.player
	
	client:EmitSound("interface/inv_eat_can.ogg")

	for i = 1, 5 do
		timer.Simple(i, function()
			client:SetHealth(math.Clamp(client:Health() + 1, 0, client:GetMaxHealth()))
		end)
	end	
end)