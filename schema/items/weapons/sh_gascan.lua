
ITEM.name = "Gascan"
ITEM.description = "itemGascanDesc"
ITEM.category = "misc"
ITEM.price = 10
ITEM.model = "models/props_junk/gascan001a.mdl"
ITEM.class = "weapon_vfire_gascan"
ITEM.weaponCategory = "melee"
ITEM.width = 2
ITEM.height = 2

if (CLIENT) then
	function ITEM:PopulateTooltip(tooltip)
		local data = tooltip:AddRow("data")
		data:SetBackgroundColor(Color(85, 127, 242))
		data:SetText(L("securitizedItemTooltip"))
		data:SetExpensiveShadow(0.5)
		data:SizeToContents()
	end
end