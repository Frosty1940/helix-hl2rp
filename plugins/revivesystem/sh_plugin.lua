PLUGIN.name = "Revive System"
PLUGIN.author = "Lechu2375, Frosty"

ix.util.Include("sv_damagehandle.lua")
ix.util.Include("sv_soundemit.lua")
ix.util.Include("cl_screen.lua")
ix.util.Include("sv_plugin.lua")

ix.lang.AddTable("english", {
	reviving = "Reviving",
	beingRevived = "You are being revived.",
})
ix.lang.AddTable("korean", {
	reviving = "일으키는 중",
	beingRevived = "일어나는 중",
})

ix.config.Add("TimeToRevive", 60, "Time in seconds to revive until death.", nil, {
	category = "Revive System",
    data = {min = 1, max = 1000}
})

ix.command.Add("CharGetUp", {
	description = "@cmdCharGetUp",
	OnRun = function(self, client, arguments)
		local entity = client.ixRagdoll

		if not (client:Health() / client:GetMaxHealth() > 0) then return false end

		if (IsValid(entity) and entity.ixGrace and entity.ixGrace < CurTime() and
			entity:GetVelocity():Length2D() < 8 and !entity.ixWakingUp and (entity.CanGetUp==true or entity.CanGetUp==nil)) then
			entity.ixWakingUp = true
			entity:CallOnRemove("CharGetUp", function()
				client:SetAction()
			end)

			client:SetAction("@gettingUp", 5, function()
				if (!IsValid(entity)) then
					return
				end

				hook.Run("OnCharacterGetup", client, entity)
				entity:Remove()
			end)
		end
	end
})