ITEM.name = "AKS-74U"
ITEM.description = "aks74uDesc"
ITEM.class = "ix_aks74u"
ITEM.weaponCategory = "primary"
ITEM.price = 350
ITEM.model = "models/smc/weapons/aks74u/w_aks74u.mdl"
ITEM.width = 3
ITEM.height = 2
-- ITEM.iconCam = {
-- 	pos = Vector(4, 200, -2),
-- 	ang = Angle(0, 270, 0),
-- 	fov = 16,
-- }
-- ITEM.exRender = true

if (CLIENT) then
	function ITEM:PopulateTooltip(tooltip)
		local data = tooltip:AddRow("data")
		data:SetBackgroundColor(derma.GetColor("Warning", tooltip))
		data:SetText(L("sociocidalItemTooltip"))
		data:SetExpensiveShadow(0.5)
		data:SizeToContents()
	end
end