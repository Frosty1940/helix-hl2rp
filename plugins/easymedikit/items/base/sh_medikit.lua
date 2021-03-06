local PLUGIN = PLUGIN

ITEM.name = "Medikit"
ITEM.description = "A Medikit Base."
ITEM.category = "Medical"
ITEM.model = "models/Gibs/HGIBS.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.healthPoint = 0
ITEM.medAttr = 0
ITEM.bleeding = false
ITEM.fracture = false

function ITEM:GetDescription()
	return (L(self.description) .. L("itemMedkitDesc01") .. self.medAttr .. L("itemMedkitDesc02") .. self.healthPoint)
end

ITEM.functions.selfheal = {
	icon = "icon16/pill.png",
	OnRun = function(itemTable)
		local client = itemTable.player
		local character = client:GetCharacter()
		local int = character:GetAttribute("int", 0)
		if int >= itemTable.medAttr then
			client:SetNetworkedFloat("NextBandageuse", 2 + CurTime())
			client:SetHealth(math.Clamp(client:Health() + itemTable.healthPoint + int, 0, client:GetMaxHealth()))
			character:SetAttrib("int", int + 0.2)
			if itemTable.bleeding then
				PLUGIN:SetBleeding(client, false)
			end
			if itemTable.fracture then
				PLUGIN:SetFracture(client, false)
			end
		else
			client:NotifyLocalized("lackKnowledge")
			return false
		end
	end
}
ITEM.functions.heal = {
	icon = "icon16/pill.png",
	OnRun = function(itemTable)
		local client = itemTable.player
		local character = client:GetCharacter()
		local int = character:GetAttribute("int", 0)
		local data = {}
			data.start = client:GetShootPos()
			data.endpos = data.start + client:GetAimVector() * 96
			data.filter = client
		local trace = util.TraceLine(data)
		local entity = trace.Entity

		-- Check if the entity is a valid door.
		if (IsValid(entity) and entity:IsPlayer()) then
			if int >= itemTable.medAttr then
				entity:SetNetworkedFloat("NextBandageuse", 2 + CurTime())
				entity:SetHealth(math.Clamp(client:Health() + itemTable.healthPoint + int, 0, entity:GetMaxHealth()))
				character:SetAttrib("int", int + 0.2)
				if itemTable.bleeding then
					PLUGIN:SetBleeding(entity, false)
				end
				if itemTable.fracture then
					PLUGIN:SetFracture(entity, false)
				end
			else
				client:NotifyLocalized("lackKnowledge")
				return false
			end
		else
			client:NotifyLocalized("cNotValid")
			return false
		end
	end
}