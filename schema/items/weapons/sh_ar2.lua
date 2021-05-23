ITEM.name = "Overwatch Standard Issue\n(Pulse-Rifle)"
ITEM.description = "ar2Desc"
ITEM.model = "models/weapons/w_irifle.mdl"
ITEM.class = "weapon_ar2"
ITEM.weaponCategory = "primary"
ITEM.classes = {CLASS_EOW, CLASS_OWS, CLASS_EMP}
ITEM.width = 4
ITEM.price = 1450
ITEM.height = 2
ITEM.iconCam = {
	ang	= Angle(-0.70499622821808, 268.25439453125, 0),
	fov	= 12.085652091515,
	pos	= Vector(0, 200, 0)
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