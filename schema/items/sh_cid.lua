
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
			itemTable:SetData("id", target:GetCharacter():GetData("cid", 00000))
			itemTable:SetData("name", target:GetCharacter():GetName())
		end

		return false
	end,
	OnCanRun = function(itemTable)
		return itemTable.player:IsCombine()
	end
}

function ITEM:GetDescription()
	if (!entity) then
		return (L(self.description) .. L("cidDesc2") .. self:GetData("id", "00000") .. L("cidDesc3") .. self:GetData("name", "nobody"))
	end
end
