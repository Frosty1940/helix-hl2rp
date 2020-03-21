
ITEM.name = "방호복"
ITEM.description = "유해한 환경으로부터 착용자를 보호하는 군용 방호복입니다.\n(남성 캐릭터 전용)"
ITEM.model = "models/props_c17/SuitCase_Passenger_Physics.mdl"
ITEM.height = 2
ITEM.width = 2
ITEM.price = 1500
ITEM.gasmask = true -- It will protect you from bad air
ITEM.resistance = true -- This will activate the protection bellow
ITEM.damage = { -- It is scaled; so 100 damage * 0.8 will makes the damage be 80.
			.9, -- Bullets
			.9, -- Slash
			.9, -- Shock
			.9, -- Burn
			.7, -- Radiation
			.7, -- Acid
			.9, -- Explosion
}
ITEM.replacements = "models/ddok1994/1980_hazmat.mdl"
ITEM.outfitCategory = "torso"
ITEM.maxDurability = 100