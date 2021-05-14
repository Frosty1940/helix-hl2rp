
ITEM.name = "Flashlight"
ITEM.model = Model("models/Items/battery.mdl")
ITEM.width = 1
ITEM.height = 1
ITEM.description = "itemFlashlightDesc"

ITEM:Hook("drop", function(item)
	item.player:Flashlight(false)
end)
