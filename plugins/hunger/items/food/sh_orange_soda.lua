ITEM.name = "Orange Soda"
ITEM.model = "models/props_junk/garbage_plasticbottle003a.mdl"
ITEM.description = "itemOrangeSodaDesc"
ITEM.thirst = 25
ITEM.price = 6

ITEM:Hook("Eat", function(item)
	local client = item.player

	client:EmitSound("npc/barnacle/barnacle_gulp2.wav")
	client:RestoreStamina(10)

	for i = 1, 5 do
		timer.Simple(i, function()
			client:SetHealth(math.Clamp(client:Health() + 1, 0, client:GetMaxHealth()))
		end)
	end
end)