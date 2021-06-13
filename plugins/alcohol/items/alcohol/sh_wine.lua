ITEM.name = "Wine"
ITEM.description = "itemWineDesc"
ITEM.model = "models/bioschockinfinite/winebottle.mdl"
ITEM.height = 2
ITEM.force = 5
ITEM.thirst = 15
ITEM.price = 30

ITEM:Hook("Drink", function(item)
	local client = item.player
	
	client:EmitSound("interface/inv_beer.ogg")
end)