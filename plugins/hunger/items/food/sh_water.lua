ITEM.name = "Breen's Water"
ITEM.model = "models/props_junk/PopCan01a.mdl"
ITEM.description = "itemWaterDesc"
ITEM.thirst = 50
ITEM.price = 1
ITEM.empty = "water_empty"

ITEM:Hook("Eat", function(item)
	local client = item.player
	local char = client:GetCharacter()
	local stm = char:GetAttribute("stm", 0)
	
	client:EmitSound("npc/barnacle/barnacle_gulp2.wav")
	char:AddBoost("water", "stm", stm * 0.9 )

	for i = 1, 5 do
		timer.Simple(i, function()
			client:SetHealth(math.Clamp(client:Health() + 2, 0, client:GetMaxHealth()))
		end)
	end
end)