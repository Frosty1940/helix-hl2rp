
ITEM.name = "Union Keycard"
ITEM.model = Model("models/dorado/tarjeta3.mdl")
ITEM.description = "itemUnionKeycardDesc"

if (CLIENT) then
	function ITEM:PopulateTooltip(tooltip)
		local data = tooltip:AddRow("data")
		data:SetBackgroundColor(Color(85, 127, 242))
		data:SetText(L("securitizedItemTooltip"))
		data:SetExpensiveShadow(0.5)
		data:SizeToContents()
	end
end