PLUGIN.name = "Anti-teamkill"
PLUGIN.author = "Dobytchick"
PLUGIN.description = "Notify and kick for teamkilling player."

ix.lang.AddTable("english", {
	teamkillWarning = "You killed friendly character, if you continue - you will get a ban!",
})
ix.lang.AddTable("korean", {
	teamkillWarning = "우호적인 캐릭터를 살해하였습니다, 계속한다면 - 추방될 것입니다!",
})

local set = cookie.Set
local get = cookie.GetNumber

function PLUGIN:PlayerHurt(client, attacker, health, damage)
	if client != attacker and IsValid(client) and IsValid(attacker) and attacker:IsPlayer() then
		if (attacker:Team() == client:Team()) and !attacker:IsAdmin() then
			damaged = attacker
			client:SetNetVar("attacked", attacker)
		end
	end
end

function PLUGIN:PlayerSpawn(client)
	if IsValid(damaged) and (client:GetNetVar("attacked", nil)) then
		client:SetNetVar("attacked", nil)
	end
end

function PLUGIN:PlayerDeath(client, inflictor, attacker)
	if client != attacker and IsValid(client) and IsValid(attacker) and attacker:IsPlayer() then
		if (attacker:Team() == client:Team()) and !attacker:IsAdmin() and client != client:GetNetVar("attacked", nil) then
			attacker.attack_counter = (attacker.attack_counter || 0) + 1
			
			if attacker.attack_counter > 1 then
				set("rdm_count"..attacker:SteamID64(), attacker.attack_counter)
				attacker:NotifyLocalized("teamkillWarning")
			end
			
			timer.Simple(10,function() 
				if attacker.attack_counter then 
					attacker.attack_counter = attacker.attack_counter - 1 
					set("rdm_count"..attacker:SteamID64(), attacker.attack_counter)
				end 
			end)
		end
	end

	if (client:GetCharacter()) then
		if get("rdm_count"..attacker:SteamID64(), 0) > 2 then 
			attacker:Ban(60,true) 
		end 
	end
end
