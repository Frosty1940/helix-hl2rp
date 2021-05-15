ITEM.name = "Health Vial"
ITEM.model = Model("models/healthvial.mdl")
ITEM.description = "healthVialDesc"
ITEM.price = 20
ITEM.healthPoint = 10 -- Health point that the player will get
ITEM.medAttr = 1 -- How much medical attribute the character needs
ITEM.bleeding = true
ITEM.fracture = true

ITEM:Hook("selfheal", function(item)
	local client = item.player
	client:EmitSound("items/smallmedkit1.wav")
end)

ITEM:Hook("heal", function(item)
	local client = item.player
	client:EmitSound("items/smallmedkit1.wav")
end)