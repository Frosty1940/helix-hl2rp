local PLUGIN = PLUGIN
PLUGIN.name = "Jump Sound"
PLUGIN.author = "enaruu"

if SERVER then
	local jumpSounds = {
		["default"] = {
			"physics/body/body_medium_impact_soft1.wav",
			"physics/body/body_medium_impact_soft2.wav",
			"physics/body/body_medium_impact_soft3.wav",
			"physics/body/body_medium_impact_soft4.wav",
			"physics/body/body_medium_impact_soft5.wav",
			"physics/body/body_medium_impact_soft6.wav",
			"physics/body/body_medium_impact_soft7.wav"
		},
		["combine"] = {
			"npc/combine_soldier/gear1.wav",
			"npc/combine_soldier/gear2.wav",
			"npc/combine_soldier/gear3.wav",
			"npc/combine_soldier/gear4.wav",
			"npc/combine_soldier/gear6.wav",
			"npc/combine_soldier/gear6.wav"
		}
	}

	local jumpCooldown = {}

	hook.Add("KeyPress", "JumpSoundsPlugin", function(ply, key)
		if ply:IsValid() and key == IN_JUMP and ply:Alive() and ply:GetCharacter() and ply:IsOnGround() and ply:GetMoveType() ~= MOVETYPE_NOCLIP then

			local soundCategory = ply:IsCombine() and "combine" or "default"
			local jumpSound = jumpSounds[soundCategory]

			ply:EmitSound(jumpSound[math.random(1, #jumpSound)])
		end
	end)

	hook.Add("OnLand", "JumpSoundsPlugin", function(ply, water, vec)
		if ply:IsValid() and ply:Alive() and ply:GetCharacter() and ply:IsOnGround() then
			local chance = math.random(1, 10)

			local soundCategory = ply:IsCombine() and "combine" or "default"
			local jumpSound = jumpSounds[soundCategory]

			ply:EmitSound(jumpSound[math.random(1, #jumpSound)])
		end
	end)
end
