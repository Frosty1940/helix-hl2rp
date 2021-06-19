
PLUGIN.name = "Pain Sounds"
PLUGIN.author = "Germanium, Frosty"
PLUGIN.description = "scream louder mother."

local painSounds = {
	Sound("vo/npc/male01/pain01.wav"),
	Sound("vo/npc/male01/pain02.wav"),
	Sound("vo/npc/male01/pain03.wav"),
	Sound("vo/npc/male01/pain04.wav"),
	Sound("vo/npc/male01/pain05.wav"),
	Sound("vo/npc/male01/pain06.wav")
}

local drownSounds = {
	Sound("player/pl_drown1.wav"),
	Sound("player/pl_drown2.wav"),
	Sound("player/pl_drown3.wav"),
}

function PLUGIN:GetPlayerPainSound(client)
	if (client:IsCombine() and (Schema:IsCombineRank(client:Name(), "SCN") or Schema:IsCombineRank(client:Name(), "SHEILD")))  then
		return false
	elseif (client:GetCharacter() and client:GetCharacter():IsVortigaunt()) then
		return false
	end

	if (client:WaterLevel() >= 3) then
		return drownSounds[math.random(1, #drownSounds)]
	end
end

function PLUGIN:PlayerHurt(client, attacker, health, damage)
	if (client:IsCombine())  then
		return false
	elseif (client:GetCharacter() and client:GetCharacter():IsVortigaunt()) then
		return false
	end

	if ((client.ixNextPain or 0) < CurTime() and health > 0) then
		local painSound = hook.Run("GetPlayerPainSound", client) or painSounds[math.random(1, #painSounds)]

		if (client:IsFemale() and !painSound:find("female")) then
			painSound = painSound:gsub("male", "female")
		end

		client:EmitSound(painSound)
		client.ixNextPain = CurTime() + 0.33
	end

	ix.log.Add(client, "playerHurt", damage, attacker:GetName() ~= "" and attacker:GetName() or attacker:GetClass())
end