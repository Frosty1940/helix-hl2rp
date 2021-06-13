
local PLUGIN = PLUGIN
ITEM.name = "Splint"
ITEM.model = Model("models/props_c17/furnituredrawer001a_shard01.mdl")
ITEM.description = "itemSplintDesc"
ITEM.category = "Medical"
ITEM.price = 25
ITEM.healthPoint = 0 -- Health point that the player will get
ITEM.medAttr = 3 -- How much medical attribute the character needs
ITEM.bleeding = false
ITEM.fracture = true

ITEM:Hook("selfheal", function(item)
	local client = item.player
	client:EmitSound("interface/inv_bandage_3p7.ogg")
end)

ITEM:Hook("heal", function(item)
	local client = item.player
	client:EmitSound("interface/inv_bandage_3p7.ogg")
end)