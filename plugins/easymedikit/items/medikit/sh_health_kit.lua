ITEM.name = "Health Kit"
ITEM.model = Model("models/Items/HealthKit.mdl")
ITEM.description = "healthKitDesc"
ITEM.price = 35
ITEM.healthPoint = 25 -- Health point that the player will get
ITEM.medAttr = 5 -- How much medical attribute the character needs
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