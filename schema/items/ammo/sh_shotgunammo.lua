ITEM.name = "Shotgun Shells"
ITEM.model = "models/Items/BoxBuckshot.mdl"
ITEM.ammo = "buckshot" -- type of the ammo
ITEM.ammoAmount = 15 -- amount of the ammo
ITEM.description = "A Box of %s Shotgun Shells"
ITEM.classes = {CLASS_EMP, CLASS_SGS, CLASS_REBEL}
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