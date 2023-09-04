
ITEM.name = "Citizen ID"
ITEM.model = Model("models/dorado/tarjeta1.mdl")
ITEM.description = "cidDesc"
ITEM.noDeathDrop = true
ITEM.functions.Use = {
	name = "Assign",
	OnRun = function(itemTable)
		local client = itemTable.player
		local data = {}
			data.start = client:GetShootPos()
			data.endpos = data.start + client:GetAimVector() * 96
			data.filter = client
		local target = util.TraceLine(data).Entity

		if (IsValid(target) and target:IsPlayer() and target:GetCharacter() and target:Team() == FACTION_CITIZEN) then
			id = Schema:ZeroNumber(math.random(1, 99999), 5)
			
			if (target:GetCharacter():GetData("cid", 00000)) then
				id = target:GetCharacter():GetData("cid", 00000)
			end
				
			target:GetCharacter():SetData("cid", id)
			itemTable:SetData("id", id)
			itemTable:SetData("name", target:GetCharacter():GetName())
		end

		return false
	end,
	OnCanRun = function(itemTable)
		local client = itemTable.player

		return !IsValid(itemTable.entity) and IsValid(client) and itemTable.invID == client:GetCharacter():GetInventory():GetID() and (client:IsCombine() or client:Team() == FACTION_ADMIN or client:Team() == FACTION_CONSCRIPT)
	end
}

function ITEM:GetDescription()
	if (!IsValid(self.entity)) then
		return (L(self.description) .. L("cidDesc2") .. self:GetData("id", "00000") .. L("cidDesc3") .. self:GetData("name", "nobody"))
	else
		return L(self.description)
	end
end