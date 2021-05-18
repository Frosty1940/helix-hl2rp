ITEM.name = "Rum"
ITEM.description = "itemRumDesc"
ITEM.model = "models/mosi/fallout4/props/alcohol/rum.mdl"
ITEM.force = 10
ITEM.thirst = 25
ITEM.price = 40

ITEM:Hook("Drink", function(item)
	local client = item.player
	
	client:EmitSound("ui/drink.wav")
	client:GetCharacter():GiveMoney(1)
end)