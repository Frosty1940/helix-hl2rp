ITEM.name = "Shotgun"
ITEM.description = "shotgunDesc"
ITEM.model = "models/weapons/w_shotgun.mdl"
ITEM.class = "weapon_shotgun"
ITEM.weaponCategory = "primary"
ITEM.classes = {CLASS_SGS, CLASS_EMP, CLASS_REBEL}
ITEM.width = 3
ITEM.height = 1
ITEM.iconCam = {
    pos = Vector(0, 200, 1),
    ang = Angle(0, 270, 0),
    fov = 10
}
ITEM.price = 600
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