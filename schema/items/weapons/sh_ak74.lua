ITEM.name = "AK-74"
ITEM.description = "ak74Desc"
ITEM.class = "ix_ak74"
ITEM.weaponCategory = "primary"
ITEM.price = 400
ITEM.model = "models/smc/weapons/ak74/w_ak74.mdl"
ITEM.width = 4
ITEM.height = 2
-- ITEM.iconCam = {
-- 	pos = Vector(-2, 200, 4),
-- 	ang = Angle(0, 270, 0),
-- 	fov = 12,
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