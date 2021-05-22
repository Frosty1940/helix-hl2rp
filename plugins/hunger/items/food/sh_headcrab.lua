ITEM.name = "Headcrab"
ITEM.model = "models/arachnit/steamvr/hla/headcrab_dinner/headcrab_dinner.mdl"
ITEM.description = "itemHeadcrabDesc"
ITEM.width = 2
ITEM.height = 2
ITEM.hunger = 100
ITEM.thirst = -10
ITEM.price = 30

ITEM:Hook("Eat", function(item)
	local client = item.player
	
	client:EmitSound("npc/barnacle/barnacle_gulp2.wav")
	if !client:GetCharacter():IsVortigaunt() then
		for i = 1, 5 do
			timer.Simple(i, function()
				client:SetHealth(math.Clamp(client:Health() - 1, 0, client:GetMaxHealth()))
			end)
		end
	end
end)