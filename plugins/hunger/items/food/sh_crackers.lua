ITEM.name = "Crackers"
ITEM.model = "models/props_lab/box01a.mdl"
ITEM.description = "itemCrackersDesc"
ITEM.hunger = 10
ITEM.price = 3

ITEM:Hook("Eat", function(item)
	local client = item.player
	
	client:EmitSound("interface/inv_eat_paperwrap.ogg")

	for i = 1, 5 do
		timer.Simple(i, function()
			client:SetHealth(math.Clamp(client:Health() + 1, 0, client:GetMaxHealth()))
		end)
	end
end)