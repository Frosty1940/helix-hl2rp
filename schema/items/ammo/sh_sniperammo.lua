ITEM.name = "Sniper Rifle Ammo"
ITEM.model = "models/items/sniper_round_box.mdl"
ITEM.ammo = "SniperRound" -- type of the ammo
ITEM.ammoAmount = 10 -- amount of the ammo
ITEM.description = "sniperammoDesc"
ITEM.classes = {CLASS_EOW, CLASS_OWS, CLASS_EMP}
ITEM.price = 300

if (CLIENT) then
	function ITEM:PopulateTooltip(tooltip)
		local data = tooltip:AddRow("data")
		data:SetBackgroundColor(Color(85, 127, 242))
		data:SetText(L("securitizedItemTooltip"))
		data:SetExpensiveShadow(0.5)
		data:SizeToContents()
	end
end