ITEM.name = "M16"
ITEM.description = "m16Desc"
ITEM.class = "ix_m16"
ITEM.weaponCategory = "primary"
ITEM.classes = {CLASS_OWS, CLASS_EMP}
ITEM.price = 400
ITEM.model = "models/weapons/w_rif_m4a1.mdl"
ITEM.width = 4
ITEM.height = 2
ITEM.factions = {FACTION_CONSCRIPT}

if (CLIENT) then
	function ITEM:PopulateTooltip(tooltip)
		local data = tooltip:AddRow("data")
		data:SetBackgroundColor(Color(85, 127, 242))
		data:SetText(L("securitizedItemTooltip"))
		data:SetExpensiveShadow(0.5)
		data:SizeToContents()
	end
end