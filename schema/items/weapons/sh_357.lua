ITEM.name = ".357 Magnum"
ITEM.description = "revolverDesc"
ITEM.model = "models/weapons/w_357.mdl"
ITEM.class = "weapon_357"
ITEM.weaponCategory = "sidearm"
ITEM.width = 2
ITEM.price = 350
ITEM.height = 1
ITEM.iconCam = {
	ang	= Angle(-17.581502914429, 250.7974395752, 0),
	fov	= 5.412494001838,
	pos	= Vector(57.109928131104, 181.7945098877, -60.738327026367)
}
ITEM.factions = {FACTION_ADMIN}

if (CLIENT) then
	function ITEM:PopulateTooltip(tooltip)
		local data = tooltip:AddRow("data")
		data:SetBackgroundColor(Color(85, 127, 242))
		data:SetText(L("securitizedItemTooltip"))
		data:SetExpensiveShadow(0.5)
		data:SizeToContents()
	end
end