
ITEM.name = "Manhack"
ITEM.description = "manhackDesc"
ITEM.model = Model("models/manhack.mdl")
ITEM.width = 1
ITEM.height = 1

ITEM.functions.Use = {
	name = "Place It",
	icon = "icon16/cursor.png",
	OnRun = function(item, player, client)
		if (item.player:IsCombine() or item.player:Team() == FACTION_ADMIN or item.player:Team() == FACTION_CONSCRIPT) then

			item.player:EmitSound( "npc/turret_floor/deploy.wav", 75, 200 )
				
			local ent = ents.Create("npc_manhack")

			for k, v in pairs(ents.GetAll()) do
				if(v:IsPlayer()) then
					if(v:IsCombine() or v:Team() == FACTION_ADMIN or v:Team() == FACTION_CONSCRIPT) then
						ent:AddEntityRelationship(v, 3)
					else
						ent:AddEntityRelationship(v, 1)
					end
				end
			end

			ent:SetPos(item.player:EyePos() + ( item.player:GetAimVector() * 100))
			ent:SetAngles(item.player:GetAngles())
			ent:Spawn()

			return true
		else
			item.player:NotifyLocalized("noPerm")

			return false
		end
	end,
	OnCanRun = function(item)
		local client = item.player

		return !IsValid(item.entity) and IsValid(client) and item.invID == client:GetCharacter():GetInventory():GetID()
	end
}