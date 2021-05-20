ITEM.name = "저항군 감시 부대 방탄 조끼"
ITEM.description = "저항을 상징하는 람다 마크가 칠해져 있습니다."
ITEM.model = "models/tnb/items/aphelion/shirt_rebeloverwatch.mdl"
ITEM.skin = 0
ITEM.width = 1
ITEM.height = 1
ITEM.armorAmount = 100
ITEM.gasmask = false -- It will protect you from bad air
ITEM.resistance = true -- This will activate the protection bellow
ITEM.damage = { -- It is scaled; so 100 damage * 0.8 will makes the damage be 80.
			.8, -- Bullets
			.9, -- Slash
			.9, -- Shock
			1, -- Burn
			1, -- Radiation
			1, -- Acid
			.8, -- Explosion
}
ITEM.outfitCategory = "torso"
ITEM.bodyGroups = {
	["torso"] = 13
}

if (CLIENT) then
	function ITEM:PopulateTooltip(tooltip)
		local data = tooltip:AddRow("data")
		data:SetBackgroundColor(derma.GetColor("Warning", tooltip))
		data:SetText(L("sociocidalItemTooltip"))
		data:SetExpensiveShadow(0.5)
		data:SizeToContents()
	end
end