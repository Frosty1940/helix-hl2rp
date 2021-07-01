ITEM.name = "Pepsi"
ITEM.model = "models/griim/foodpack/sodacan_pepsi.mdl"
ITEM.description = "itemCokeDesc"
ITEM.skin = 1
ITEM.thirst = 25
ITEM.price = 3
ITEM.empty = "water_empty"

ITEM:Hook("Eat", function(item)
	local client = item.player
	
	client:EmitSound("interface/inv_drink_can2.ogg")

	for i = 1, 5 do
		timer.Simple(i, function()
			client:SetHealth(math.Clamp(client:Health() + 2, 0, client:GetMaxHealth()))
		end)
	end
end)