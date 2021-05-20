
ITEM.name = "Flashlight"
ITEM.model = Model("models/Items/battery.mdl")
ITEM.width = 1
ITEM.height = 1
ITEM.description = "itemFlashlightDesc"

ITEM:Hook("drop", function(item)
	item.player:Flashlight(false)
end)

if (CLIENT) then
	function ITEM:PopulateTooltip(tooltip)
		local data = tooltip:AddRow("data")
		data:SetBackgroundColor(Color(85, 127, 242))
		data:SetText(L("securitizedItemTooltip"))
		data:SetExpensiveShadow(0.5)
		data:SizeToContents()
	end
end
