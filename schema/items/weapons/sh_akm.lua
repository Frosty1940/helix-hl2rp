ITEM.name = "AKM"
ITEM.description = "akmDesc"
ITEM.class = "ix_akm"
ITEM.weaponCategory = "primary"
ITEM.price = 410
ITEM.model = "models/smc/weapons/akm/w_akm.mdl"
ITEM.width = 4
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