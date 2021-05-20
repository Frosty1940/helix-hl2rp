ITEM.name = "Crossbow Bolts"
ITEM.model = "models/Items/CrossbowRounds.mdl"
ITEM.ammo = "XBowBolt" -- type of the ammo
ITEM.ammoAmount = 5 -- amount of the ammo
ITEM.description = "A Bundle of %s Crossbow Bolts"

if (CLIENT) then
	function ITEM:PopulateTooltip(tooltip)
		local data = tooltip:AddRow("data")
		data:SetBackgroundColor(derma.GetColor("Warning", tooltip))
		data:SetText(L("sociocidalItemTooltip"))
		data:SetExpensiveShadow(0.5)
		data:SizeToContents()
	end
end