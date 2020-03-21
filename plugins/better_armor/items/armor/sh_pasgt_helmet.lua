
ITEM.name = "PASGT 방탄모"
ITEM.description = "1983년 미군이 M1 철모를 대체하여 채용한 케블러 섬유 소재 방탄모입니다.\n(남성 캐릭터 전용)"
ITEM.model = "models/props_junk/cardboard_box004a.mdl"
ITEM.height = 1
ITEM.width = 1
ITEM.armorAmount = 30
ITEM.price = 450
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
ITEM.bodyGroups = {
	["helmet"] = 1
}
ITEM.outfitCategory = "head"
ITEM.maxDurability = 100