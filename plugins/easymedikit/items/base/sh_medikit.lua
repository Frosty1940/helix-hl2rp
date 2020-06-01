ITEM.name = "Medikit"
ITEM.description = "A Medikit Base."
ITEM.category = "Medical"
ITEM.model = "models/Gibs/HGIBS.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.healthPoint = 0
ITEM.medAttr = 0
ITEM.stopBleeding = true
ITEM.healBroken = true

function ITEM:GetDescription()
	return L(self.description .. "\n \n 의학 지식:" .. self.medAttr .. "\n 회복력: " .. self.healthPoint)
end

ITEM.functions.selfheal = {
	icon = "icon16/pill.png",
	OnRun = function(itemTable)
		local client = itemTable.player
		local character = client:GetCharacter()
		local int = character:GetAttribute("int", 0)
		if int >= itemTable.medAttr then
			for hitgroup in pairs(Limb:GetDataHigtroup()) do
				if (itemTable.stopBleeding == true) then
					Limb:SetBleeding(client, hitgroup, false)
				end

				if (itemTable.healBroken == true) then
					Limb:SetBroken(client, hitgroup, false)
				end

				Limb:SetHealth(client, hitgroup, -itemTable.healthPoint)
			end

			client:SetNetworkedFloat("NextBandageuse", 2 + CurTime())
			client:SetHealth(math.min(client:Health() + itemTable.healthPoint + int, client:GetMaxHealth()))
			character:SetAttrib("int", int + 0.2)
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
				for hitgroup in pairs(Limb:GetDataHigtroup()) do
					if (itemTable.stopBleeding == true) then
						Limb:SetBleeding(entity, hitgroup, false)
					end

					if (itemTable.healBroken == true) then
						Limb:SetBroken(entity, hitgroup, false)
					end

					Limb:SetHealth(entity, hitgroup, -itemTable.healthPoint)
				end

				entity:SetNetworkedFloat("NextBandageuse", 2 + CurTime())
				entity:SetHealth(math.min(client:Health() + itemTable.healthPoint + int, entity:GetMaxHealth()))
				character:SetAttrib("int", int + 0.2)
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