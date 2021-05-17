ITEM.name = "Corn"
ITEM.model = "models/bioshockinfinite/porn_on_cob.mdl"
ITEM.description = "itemCornDesc"
ITEM.price = 10
ITEM.hunger = 10

ITEM:Hook("Eat", function(item)
	local client = item.player
	
	client:EmitSound("npc/barnacle/barnacle_gulp2.wav")
	
	for i = 1, 5 do
		timer.Simple(i, function()
			client:SetHealth(math.Clamp(client:Health() + 1, 0, client:GetMaxHealth()))
		end)
	end
end)