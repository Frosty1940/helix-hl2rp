ITEM.name = "SMG Bullets"
ITEM.model = "models/Items/BoxMRounds.mdl"
ITEM.ammo = "smg1" -- type of the ammo
ITEM.ammoAmount = 45 -- amount of the ammo
ITEM.description = "smg1ammoDesc"
ITEM.classes = {CLASS_EMP, CLASS_OWS, CLASS_MPU, CLASS_REBEL}
ITEM.factions = {FACTION_CONSCRIPT}
ITEM.price = 45

if (CLIENT) then
	function ITEM:PopulateTooltip(tooltip)
		local data = tooltip:AddRow("data")
		data:SetBackgroundColor(Color(85, 127, 242))
		data:SetText(L("securitizedItemTooltip"))
		data:SetExpensiveShadow(0.5)
		data:SizeToContents()
	end
end