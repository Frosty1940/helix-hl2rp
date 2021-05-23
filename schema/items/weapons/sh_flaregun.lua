ITEM.name = "Flare Gun"
ITEM.description = "flaregunDesc"
ITEM.model = "models/vj_weapons/w_flaregun.mdl"
ITEM.class = "weapon_vj_flaregun"
ITEM.weaponCategory = "sidearm"
ITEM.classes = {CLASS_REBEL}
ITEM.model = "models/vj_weapons/w_flaregun.mdl"
ITEM.width = 2
ITEM.height = 1
ITEM.price = 250
ITEM.iconCam = {
	pos = Vector(4, 200, 0.30000001192093),
	ang = Angle(0, 270, 0),
	fov = 5
}
ITEM.exRender = true
ITEM.factions = {FACTION_OTA, FACTION_MPF, FACTION_CONSCRIPT}

if (CLIENT) then
	function ITEM:PopulateTooltip(tooltip)
		local data = tooltip:AddRow("data")
		data:SetBackgroundColor(Color(85, 127, 242))
		data:SetText(L("securitizedItemTooltip"))
		data:SetExpensiveShadow(0.5)
		data:SizeToContents()
	end
end