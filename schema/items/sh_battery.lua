
ITEM.name = "Battery"
ITEM.model = Model("models/Items/battery.mdl")
ITEM.description = "batteryDesc"

ITEM.functions.Use = {
	OnRun = function(item)
		local client = item.player

		client:SetArmor(math.Clamp(client:Armor() + 15, 0, 255))
		client:EmitSound("items/battery_pickup.wav")
		client:GetCharacter():SetAttrib("int", int + 0.1)
	end,
	OnCanRun = function(item)
		return item.player:IsCombine()
	end
}
