ITEM.name = "Pasta"
ITEM.model = "models/dead rising 2/pasta.mdl"
ITEM.description = "itemPastaDesc"
ITEM.hunger = 45
ITEM.thirst = -10
ITEM.price = 12

ITEM:Hook("Eat", function(item)
	local client = item.player
	
	client:EmitSound("npc/barnacle/barnacle_gulp2.wav")

	for i = 1, 10 do
		timer.Simple(i, function()
			client:SetHealth(math.Clamp(client:Health() + 1, 0, client:GetMaxHealth()))
		end)
	end
end)