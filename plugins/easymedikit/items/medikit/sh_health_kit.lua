ITEM.name = "Health Kit"
ITEM.model = Model("models/Items/HealthKit.mdl")
ITEM.description = "A white packet filled with medication."
ITEM.price = 65
ITEM.healthPoint = 50 -- Health point that the player will get
ITEM.medAttr = 5 -- How much medical attribute the character needs

ITEM:Hook("Apply", function(item)
	local client = item.player
	client:EmitSound("items/medshot4.wav")
end)

ITEM:Hook("Give", function(item)
	local client = item.player
	client:EmitSound("items/medshot4.wav")
end)