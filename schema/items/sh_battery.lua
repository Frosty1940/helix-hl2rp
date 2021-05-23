
ITEM.name = "Combine Battery"
ITEM.model = Model("models/Items/battery.mdl")
ITEM.description = "batteryDesc"
ITEM.price = 50

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

if (CLIENT) then
	function ITEM:PopulateTooltip(tooltip)
		local data = tooltip:AddRow("data")
		data:SetBackgroundColor(Color(85, 127, 242))
		data:SetText(L("securitizedItemTooltip"))
		data:SetExpensiveShadow(0.5)
		data:SizeToContents()
	end
end