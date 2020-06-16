ITEM.name = "Health Kit"
ITEM.model = Model("models/Items/HealthKit.mdl")
ITEM.description = "약품이 들어있는 하얀 상자입니다."
ITEM.price = 35
ITEM.healthPoint = 25 -- Health point that the player will get
ITEM.medAttr = 5 -- How much medical attribute the character needs

ITEM:Hook("selfheal", function(item)
	local client = item.player
	client:EmitSound("items/smallmedkit1.wav")
end)

ITEM:Hook("heal", function(item)
	local client = item.player
	client:EmitSound("items/smallmedkit1.wav")
end)