ITEM.name = "Bandage"
ITEM.description = "A piece of material used either to support a medical device such as a dressing or splint, or on its own to provide support to or to restrict the movement of a part of the body."
ITEM.model = "models/props_lab/box01a.mdl"
ITEM.category = "Medical"
ITEM.price = 20
ITEM.healthPoint = 10 -- Health point that the player will get
ITEM.medAttr = 1 -- How much medical attribute the character needs

ITEM:Hook("Apply", function(item)
	local client = item.player
	client:EmitSound("physics/body/body_medium_scrape_rough_loop1.wav")
end)

ITEM:Hook("Give", function(item)
	local client = item.player
	client:EmitSound("physics/body/body_medium_scrape_rough_loop1.wav")
end)