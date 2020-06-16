ITEM.name = "Bandage"
ITEM.description = "상처나 부스럼 따위에 감는 소독한 헝겊입니다."
ITEM.model = "models/props_lab/box01a.mdl"
ITEM.category = "Medical"
ITEM.price = 15
ITEM.healthPoint = 10 -- Health point that the player will get
ITEM.medAttr = 5 -- How much medical attribute the character needs

ITEM:Hook("selfheal", function(item)
	local client = item.player
	client:EmitSound("physics/body/body_medium_scrape_rough_loop1.wav")
end)

ITEM:Hook("heal", function(item)
	local client = item.player
	client:EmitSound("physics/body/body_medium_scrape_rough_loop1.wav")
end)