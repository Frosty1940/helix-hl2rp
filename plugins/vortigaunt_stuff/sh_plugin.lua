PLUGIN.name = "Vortigaunt Faction"
PLUGIN.author = "JohnyReaper | Voicelines: sQubany"
PLUGIN.description = "Adds some features for vortigaunts."

ix.util.Include("sh_voices.lua")

ix.config.Add("VortHealMin", 5, "Minimum health value that can be healed by vortigaunt" , nil, {
	data = {min = 1, max = 100},
	category = "Vortigaunt Healing Swep"
})

ix.config.Add("VortHealMax", 20, "Maximum health value that can be healed by vortigaunt" , nil, {
	data = {min = 1, max = 100},
	category = "Vortigaunt Healing Swep"
})


-- Fix default vortigaunt animations
ix.anim.vort = {
	normal = {
		[ACT_MP_STAND_IDLE] = {ACT_IDLE, ACT_IDLE_ANGRY},
		[ACT_MP_CROUCH_IDLE] = {"crouchidle", "crouchidle"},
		[ACT_MP_RUN] = {ACT_RUN, ACT_RUN},
		[ACT_MP_CROUCHWALK] = {ACT_WALK, ACT_WALK},
		[ACT_MP_WALK] = {ACT_WALK, ACT_WALK},
		["attack"] = ACT_MELEE_ATTACK1
	},
	melee = {
		["attack"] = ACT_MELEE_ATTACK1,
		[ACT_MP_STAND_IDLE] = {ACT_IDLE, ACT_IDLE_ANGRY},
		[ACT_MP_CROUCH_IDLE] = {"crouchidle", "crouchidle"},
		[ACT_MP_RUN] = {ACT_RUN, ACT_RUN_AIM},
		[ACT_MP_CROUCHWALK] = {ACT_WALK, ACT_WALK},
		[ACT_MP_WALK] = {ACT_WALK, ACT_WALK},
	},
	grenade = {
		["attack"] = ACT_MELEE_ATTACK1,
		[ACT_MP_STAND_IDLE] = {ACT_IDLE, ACT_IDLE_ANGRY},
		[ACT_MP_CROUCH_IDLE] = {"crouchidle", "crouchidle"},
		[ACT_MP_RUN] = {ACT_RUN, ACT_RUN},
		[ACT_MP_CROUCHWALK] = {ACT_WALK, ACT_WALK},
		[ACT_MP_WALK] = {ACT_WALK, ACT_WALK}
	},
	pistol = {
		[ACT_MP_STAND_IDLE] = {ACT_IDLE, "TCidlecombat"},
		[ACT_MP_CROUCH_IDLE] = {"crouchidle", "crouchidle"},
		["reload"] = ACT_IDLE,
		[ACT_MP_RUN] = {ACT_RUN, "run_all_TC"},
		[ACT_MP_CROUCHWALK] = {ACT_WALK, ACT_WALK},
		[ACT_MP_WALK] = {ACT_WALK, "Walk_all_TC"}
	},
	shotgun = {
		[ACT_MP_STAND_IDLE] = {ACT_IDLE, "TCidlecombat"},
		[ACT_MP_CROUCH_IDLE] = {"crouchidle", "crouchidle"},
		["reload"] = ACT_IDLE,
		[ACT_MP_RUN] = {ACT_RUN, "run_all_TC"},
		[ACT_MP_CROUCHWALK] = {ACT_WALK, ACT_WALK},
		[ACT_MP_WALK] = {ACT_WALK, "Walk_all_TC"}
	},
	smg = {
		[ACT_MP_STAND_IDLE] = {ACT_IDLE, "TCidlecombat"},
		[ACT_MP_CROUCH_IDLE] = {"crouchidle", "crouchidle"},
		["reload"] = ACT_IDLE,
		[ACT_MP_RUN] = {ACT_RUN, "run_all_TC"},
		[ACT_MP_CROUCHWALK] = {ACT_WALK, ACT_WALK},
		[ACT_MP_WALK] = {ACT_WALK, "Walk_all_TC"}
	},
	beam = {
		[ACT_MP_STAND_IDLE] = {ACT_IDLE, ACT_IDLE_ANGRY},
		[ACT_MP_CROUCH_IDLE] = {"crouchidle", "crouchidle"},
		[ACT_MP_RUN] = {ACT_RUN, ACT_RUN},
		[ACT_MP_CROUCHWALK] = {ACT_WALK, ACT_WALK},
		[ACT_MP_WALK] = {ACT_WALK, ACT_WALK},
		attack = ACT_GESTURE_RANGE_ATTACK1,
		["reload"] = ACT_IDLE,
		["glide"] = {ACT_RUN, ACT_RUN}
	},
	sweep = {
		[ACT_MP_STAND_IDLE] = {ACT_IDLE, "sweep_idle"},
		[ACT_MP_CROUCH_IDLE] = {"crouchidle", "crouchidle"},
		[ACT_MP_RUN] = {ACT_RUN, ACT_RUN},
		[ACT_MP_CROUCHWALK] = {ACT_WALK, ACT_WALK},
		[ACT_MP_WALK] = {"Walk_all_HoldBroom", "Walk_all_HoldBroom"},
		-- attack = "sweep",
	},
	heal = {
		[ACT_MP_STAND_IDLE] = {ACT_IDLE, ACT_IDLE},
		[ACT_MP_CROUCH_IDLE] = {"crouchidle", "crouchidle"},
		[ACT_MP_RUN] = {ACT_RUN, ACT_RUN},
		[ACT_MP_CROUCHWALK] = {ACT_WALK, ACT_WALK},
		[ACT_MP_WALK] = {ACT_WALK, ACT_WALK},
	},
	glide = ACT_GLIDE
}

//Default vorts
ix.anim.SetModelClass("models/vortigaunt.mdl", "vort")
ix.anim.SetModelClass("models/vortigaunt_slave.mdl", "vort")
ix.anim.SetModelClass("models/vortigaunt_blue.mdl", "vort")
ix.anim.SetModelClass("models/vortigaunt_doctor.mdl", "vort")

//Ozaxi's vortigaunt
ix.anim.SetModelClass("models/vortigaunt_ozaxi.mdl", "vort")

//Better Vortigaunts addon
ix.anim.SetModelClass("models/kw/kw_vortigaunt.mdl", "vort")
ix.anim.SetModelClass("models/kw/vortigaunt_nobgslave.mdl", "vort")
ALWAYS_RAISED["swep_vortigaunt_sweep"] = true
ALWAYS_RAISED["swep_vortigaunt_heal"] = true

local CHAR = ix.meta.character

function CHAR:IsVortigaunt()
	local faction = self:GetFaction()
	return faction == FACTION_VORTIGAUNT or faction == FACTION_ENSLAVEDVORTIGAUNT
end

function PLUGIN:GetPlayerPainSound(client)
	if (client:GetCharacter():IsVortigaunt()) then
		local PainVort = {
			"vo/npc/vortigaunt/vortigese11.wav",
			"vo/npc/vortigaunt/vortigese07.wav",
			"vo/npc/vortigaunt/vortigese03.wav",
		}
		local vort_pain = table.Random(PainVort)
		return vort_pain
	end
end

function PLUGIN:GetPlayerDeathSound(client)
	if (client:GetCharacter():IsVortigaunt()) then
		return false
	end
end


if CLIENT then
	randomVortWords = {L"ahglah", L"ahhhr", L"alla", L"allu", L"baah", L"beh", L"bim", L"buu", L"chaa", L"chackt", L"churr", L"dan", L"darr", L"dee", L"eeya", L"ge", L"ga", L"gaharra", L"gaka", L"galih", L"gallalam", L"gerr", L"gog", L"gram", L"gu", L"gunn", L"gurrah", L"ha", L"hallam", L"harra", L"hen", L"hi", L"jah", L"jurr", L"kallah", L"keh", L"kih", L"kurr", L"lalli", L"llam", L"lih", L"ley", L"lillmah", L"lurh", L"mah", L"min", L"nach", L"nahh", L"neh", L"nohaa", L"nuy", L"raa", L"ruhh", L"rum", L"saa", L"seh", L"sennah", L"shaa", L"shuu", L"surr", L"taa", L"tan", L"tsah", L"turr", L"uhn", L"ula", L"vahh", L"vech", L"veh", L"vin", L"voo", L"vouch", L"vurr", L"xkah", L"xih", L"zurr"}
end

ix.chat.Register("Vortigese", {
	format = "%s says in vortigese \"%s\"",
	GetColor = function(self, speaker, text)
		-- If you are looking at the speaker, make it greener to easier identify who is talking.
		if (LocalPlayer():GetEyeTrace().Entity == speaker) then
			return ix.config.Get("chatListenColor")
		end

		-- Otherwise, use the normal chat color.
		return ix.config.Get("chatColor")
	end,
	CanHear = ix.config.Get("chatRange", 280),
	CanSay = function(self, speaker,text)
		if (speaker:GetCharacter():IsVortigaunt()) then
			return true
		else
			speaker:NotifyLocalized("dontKnowVortigese")
			return false
		end
	end,
	OnChatAdd = function(self,speaker, text, anonymous, info)
		local color = self:GetColor(speaker, text, info)
		local name = anonymous and
				L"someone" or hook.Run("GetCharacterName", speaker, chatType) or
				(IsValid(speaker) and speaker:Name() or "Console")
		
		if (!LocalPlayer():GetCharacter():IsVortigaunt()) then
			local splitedText = string.Split(text, " ")
			local vortigese = {}

			for k, v in pairs(splitedText) do
				local word = table.Random(randomVortWords)
				table.insert( vortigese, word )

			end
			PrintTable(vortigese)
			text = table.concat( vortigese, " " )
		end

		chat.AddText(color, string.format(self.format, name, text))
	end,	
	prefix = {"/v", "/vort"},
	description = "@cmdVort",
	indicator = L"chatVortigesing",
	deadCanChat = false
})
