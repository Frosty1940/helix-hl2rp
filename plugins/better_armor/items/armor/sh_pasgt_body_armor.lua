
ITEM.name = "PASGT 방탄복"
ITEM.description = "1983년 미군이 M69 방편복을 대체하여 채용한 케블러 섬유 소재 방탄복입니다."
ITEM.model = "models/props_c17/SuitCase_Passenger_Physics.mdl"
ITEM.height = 2
ITEM.width = 2
ITEM.armorAmount = 70
ITEM.price = 1000
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
ITEM.replacements = {
	{"novest", ""}
}
ITEM.bodyGroups = {
	["harness"] = 1,
	["bodyarmor"] = 1
}
ITEM.outfitCategory = "torso"
ITEM.maxDurability = 150