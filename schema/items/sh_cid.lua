
ITEM.name = "Citizen ID"
ITEM.model = Model("models/dorado/tarjeta1.mdl")
ITEM.description = "cidDesc"

function ITEM:GetDescription()
	return (L(self.description) .. L("cidDesc2") .. self:GetData("id", "00000") .. L("cidDesc3") .. self:GetData("name", "nobody"))
end
