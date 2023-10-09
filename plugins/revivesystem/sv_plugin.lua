local PLUGIN = PLUGIN

function PLUGIN:PlayerUse(client, entity)
	-- hook.Run("PlayerSay", client, entity)
	if (!client:IsRestricted() and entity:IsRagdoll() and !entity:GetNetVar("reviving")) then
		if !entity:GetNetVar("player") then return end
		if not entity:GetNetVar("player"):Alive() then return end
		if not entity:GetNetVar("revivable", true) == true then return end

		local uid = "dietime"..entity:GetNetVar("player"):GetCharacter():GetID()

		if not timer.Exists(uid) then return end

		local ply = entity:GetNetVar("player")

		ply:SetAction("@beingRevived", 10)
		ply:SetNetVar("reviving", true)

		client:SetAction("@reviving", 10)

		client:DoStaredAction(entity, function()
			ply:SetHealth(ply:GetNetVar("previousHealth"))
			ply:SetRagdolled(false,0)
			ply:SetNetVar("reviving")
			client.CanGetUp = true
			timer.Remove(uid)
		end, 10, function()
			if (IsValid(ply)) then
				ply:SetNetVar("reviving")
				ply:SetAction()
			end

			if (IsValid(client)) then
				client:SetAction()
			end
		end)
	end
end

function PLUGIN:PlayerSpawn(client)
	if client:GetCharacter() then
		client.CanGetUp = true

		local uid = "dietime"..client:GetCharacter():GetID()

		if timer.Exists(uid) then
			timer.Remove(uid)
		end
	end
end