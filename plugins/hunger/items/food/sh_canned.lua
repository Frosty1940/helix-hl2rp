ITEM.name = "Canned Soup"
ITEM.model = "models/bioschockinfinite/canned_soup.mdl"
ITEM.description = "itemCannedDesc"
ITEM.hunger = 40

ITEM:Hook("Eat", function(item)
	local client = item.player
	
	client:EmitSound("npc/barnacle/barnacle_gulp2.wav")
	for i = 1, 5 do
		timer.Simple(i, function()
			client:SetHealth(math.Clamp(client:Health() + 1, 0, client:GetMaxHealth()))
		end)
	end
end)