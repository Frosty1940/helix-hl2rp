local PLUGIN = PLUGIN

function PLUGIN:PlayerUse(client, entity)
	-- hook.Run("PlayerSay", client, entity)
	if (!client:IsRestricted() and entity:IsRagdoll() and !entity:GetNetVar("reviving")) then
		if !entity:GetNetVar("player") then return end
		if !entity:GetNetVar("player"):Alive() then return end

		-- hook.Run("PlayerSay", client, entity:GetNetVar("player"))

		local ply = entity:GetNetVar("player")

		ply:SetAction("@beingRevived", 10)
		ply:SetNetVar("reviving", true)

		client:SetAction("@reviving", 10)

		client:DoStaredAction(entity, function()
			ply:SetHealth(ply:GetNetVar("previousHealth"))
			ply:SetRagdolled(false,0)
			ply:SetNetVar("reviving")
			local uid = "dietime"..ply:GetCharacter():GetID() 
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