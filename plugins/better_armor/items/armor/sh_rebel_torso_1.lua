ITEM.name = "파란색 저항군 전투복 상의"
ITEM.description = "저항을 상징하는 람다 마크가 칠해져 있습니다."
ITEM.model = "models/tnb/items/aphelion/shirt_rebel1.mdl"
ITEM.skin = 1
ITEM.width = 1
ITEM.height = 1
ITEM.armorAmount = 70
ITEM.gasmask = false -- It will protect you from bad air
ITEM.resistance = false -- This will activate the protection bellow
ITEM.damage = { -- It is scaled; so 100 damage * 0.8 will makes the damage be 80.
			1, -- Bullets
			1, -- Slash
			1, -- Shock
			1, -- Burn
			1, -- Radiation
			1, -- Acid
			1, -- Explosion
}
ITEM.outfitCategory = "torso"
ITEM.bodyGroups = {
	["torso"] = 8
}

if (CLIENT) then
	function ITEM:PopulateTooltip(tooltip)
		local data = tooltip:AddRow("data")
		data:SetBackgroundColor(derma.GetColor("Warning", tooltip))
		data:SetText(L("sociosidalItemTooltip"))
		data:SetExpensiveShadow(0.5)
		data:SizeToContents()
	end
end