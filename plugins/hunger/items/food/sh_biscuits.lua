ITEM.name = "Biscuits"
ITEM.model = "models/props_lab/box01a.mdl"
ITEM.description = "itemBiscuitsDesc"
ITEM.hunger = 10
ITEM.price = 3

ITEM:Hook("Eat", function(item)
	local client = item.player
	
	client:EmitSound("npc/barnacle/barnacle_gulp2.wav")

	for i = 1, 5 do
		timer.Simple(i, function()
			client:SetHealth(math.Clamp(client:Health() + 1, 0, client:GetMaxHealth()))
		end)
	end
end)