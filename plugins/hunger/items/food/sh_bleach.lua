ITEM.name = "Bleach"
ITEM.description = "itemBleachDesc"
ITEM.model = Model("models/props_junk/garbage_plasticbottle001a.mdl")
ITEM.thirst = 30
ITEM.price = 20

ITEM:Hook("Eat", function(item)
	local client = item.player
	
	client:EmitSound("npc/barnacle/barnacle_gulp2.wav")

	for i = 1, 10 do
		timer.Simple(i, function()
			client:SetHealth(math.Clamp(client:Health() - 2, 0, client:GetMaxHealth()))
		end)
	end
end)