
ITEM.name = "Combine Battery"
ITEM.model = Model("models/Items/battery.mdl")
ITEM.description = "batteryDesc"

ITEM.functions.Use = {
	OnRun = function(item)
		local client = item.player

		client:SetArmor(math.Clamp(client:Armor() + 15, 0, 255))
		client:EmitSound("items/battery_pickup.wav")
	end,
	OnCanRun = function(item)
		return item.player:IsCombine()
	end
}
