ITEM.name = ".357 Magnum Bullets"
ITEM.model = "models/items/357ammo.mdl"
ITEM.ammo = "357" -- type of the ammo
ITEM.ammoAmount = 12 -- amount of the ammo
ITEM.description = "magnumammoDesc"
ITEM.price = 10
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