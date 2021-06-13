ITEM.name = "Beer"
ITEM.description = "itemBeerDesc"
ITEM.model = "models/mosi/fallout4/props/alcohol/beer.mdl"
ITEM.force = 5
ITEM.thirst = 20
ITEM.price = 10

ITEM:Hook("Drink", function(item)
	local client = item.player
	
	client:EmitSound("interface/inv_beer.ogg")
end)