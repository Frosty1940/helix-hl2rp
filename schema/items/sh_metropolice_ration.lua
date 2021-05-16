
ITEM.name = "High-class Ration"
ITEM.model = Model("models/weapons/w_packatm.mdl")
ITEM.description = "rationDesc"
ITEM.items = {"metropolice_supplements", "biscuits", "water"}

ITEM.functions.Open = {
	OnRun = function(itemTable)
		local client = itemTable.player
		local character = client:GetCharacter()

		for k, v in ipairs(itemTable.items) do
			if (!character:GetInventory():Add(v)) then
				ix.item.Spawn(v, client)
			end
		end
		local luck = character:GetAttribute(lck, 0)
		local luckMult = ix.config.Get("luckMultiplier", 1)
		client:EmitSound("ambient/fire/mtov_flame2.wav", 75, math.random(160, 180), 0.35)
	end
}
