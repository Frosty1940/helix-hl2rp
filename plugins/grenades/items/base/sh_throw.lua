ITEM.name = "Throwable Object"
ITEM.model = "models/Items/grenadeAmmo.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.throwent = "nut_flare"
ITEM.throwforce = 2500
ITEM.description = "Throwable Object Example"

-- You can use hunger table? i guess? 
ITEM.functions = ITEM.functions or {}
ITEM.functions.throw = {
	name = "Throw",
	tip = "useTip",
	icon = "icon16/arrow_up.png",
	OnRun = function(item)
		local client = item.player
		client.thrownGrenades = client.thrownGrenades or {}

		local cnt = 0
		for index, ent in pairs(client.thrownGrenades) do
			if (IsValid(ent)) then
				cnt = cnt + 1
			else
				client.thrownGrenades[index] = nil
			end
		end

		if (cnt > 2) then
			client:NotifyLocalized("tooManyGrenades")
			return false
		end

		local grd = ents.Create( item.throwent )
		grd:SetPos( client:EyePos() + client:GetAimVector() * 50 )
		grd:Spawn()
		if (grd.CPPISetOwner) then
			grd:CPPISetOwner(client)
		end

		table.insert(client.thrownGrenades, grd)

		local phys = grd:GetPhysicsObject()
		phys:SetVelocity( client:GetAimVector() * item.throwforce * math.Rand( .8, 1 ) )
		phys:AddAngleVelocity( client:GetAimVector() * item.throwforce  )

		if (item.EntConfigure) then
			item:EntConfigure(grd)
		end
		
		return true
	end,
}