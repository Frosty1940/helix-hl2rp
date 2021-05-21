ITEM.name = "Pulse-Rifle Orb"
ITEM.model = "models/Items/combine_rifle_ammo01.mdl"
ITEM.ammo = "AR2AltFire" -- type of the ammo
ITEM.ammoAmount = 1 -- amount of the ammo
ITEM.description = "ar2orbammoDesc"
ITEM.classes = {CLASS_EOW}

if (CLIENT) then
	function ITEM:PopulateTooltip(tooltip)
		local data = tooltip:AddRow("data")
		data:SetBackgroundColor(Color(85, 127, 242))
		data:SetText(L("securitizedItemTooltip"))
		data:SetExpensiveShadow(0.5)
		data:SizeToContents()
	end
end