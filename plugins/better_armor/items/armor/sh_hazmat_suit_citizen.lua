
ITEM.name = "Hazmat Suit"
ITEM.description = "hazmatSuitCitizenDesc"
ITEM.model = "models/props_c17/SuitCase_Passenger_Physics.mdl"
ITEM.height = 1
ITEM.width = 1
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
ITEM.replacements = "models/hlvr/characters/worker/npc/worker_citizen.mdl"
ITEM.outfitCategory = "torso"
ITEM.newSkin = 1
ITEM.maxDurability = 100