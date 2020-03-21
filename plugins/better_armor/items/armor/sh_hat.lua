ITEM.name = "전투모"
ITEM.description = "군인이 평상시에 착용하도록 만든 모자입니다."
ITEM.model = "models/props_junk/cardboard_box004a.mdl"
ITEM.height = 1
ITEM.width = 1
ITEM.armorAmount = 0
ITEM.price = 50
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
ITEM.bodyGroups = {
	["helmet"] = 3
}
ITEM.outfitCategory = "head"
ITEM.maxDurability = 30