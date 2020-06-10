ITEM.name = "Health Vial"
ITEM.model = Model("models/healthvial.mdl")
ITEM.description = "녹색 액체가 든 작은 주사기입니다."
ITEM.price = 40
ITEM.healthPoint = 20 -- Health point that the player will get
ITEM.medAttr = 2 -- How much medical attribute the character needs

ITEM:Hook("Apply", function(item)
	local client = item.player
	client:EmitSound("items/medshot4.wav")
end)

ITEM:Hook("Give", function(item)
	local client = item.player
	client:EmitSound("items/medshot4.wav")
end)