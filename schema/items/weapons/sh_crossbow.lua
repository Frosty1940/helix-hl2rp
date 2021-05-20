ITEM.name = "Crossbow"
ITEM.description = "crossbowDesc"
ITEM.model = "models/weapons/w_crossbow.mdl"
ITEM.width = 3
ITEM.height = 1
ITEM.iconCam = {
    pos = Vector(-12, 189.54248046875, 3),
    ang = Angle(0, 270, 0),
    fov = 15.882352941176
}
ITEM.class = "weapon_crossbow"
ITEM.weaponCategory = "primary"
ITEM.price = 750

if (CLIENT) then
	function ITEM:PopulateTooltip(tooltip)
		local data = tooltip:AddRow("data")
		data:SetBackgroundColor(derma.GetColor("Warning", tooltip))
		data:SetText(L("sociosidalItemTooltip"))
		data:SetExpensiveShadow(0.5)
		data:SizeToContents()
	end
end