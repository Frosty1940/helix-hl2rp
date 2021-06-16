-- Variables that are used on both client and server
SWEP.Gun = ("ix_m16a2") -- must be the name of your swep but NO CAPITALS!
SWEP.Category				= "HL2 RP" --Category where you will find your weapons
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellAttachment			= "shell" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.Manufacturer = "FN Herstal" --Gun Manufactrer (e.g. Hoeckler and Koch )
SWEP.Author				= "The Master MLG & Frosty"
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.PrintName				= "M16A2"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 1				-- Slot in the weapon selection menu
SWEP.SlotPos				= 3			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox		= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   	= false		-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= false		-- set false if you want no crosshair
SWEP.Weight					= 35		-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "ar2"		-- how others view you carrying the weapon
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive 
-- you're mostly going to use ar2, smg, shotgun or pistol. rpg makes for good sniper rifles

SWEP.ViewModelFOV			= 68
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/v_m16a2.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_m16a2.mdl"	-- Weapon world model
SWEP.Base				= "tfa_gun_base" --the Base this weapon will work on. PLEASE RENAME THE BASE! 
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false
SWEP.ShowWorldModel			= true
SWEP.UseHands = true

SWEP.Primary.Sound			= Sound("weapons/tfa_insurgency_sandstorm_m16a2/m16a4_fp.wav")
SWEP.Primary.SilencedSound			= Sound("weapons/tfa_insurgency_sandstorm_m16a2/m16a4_suppressed_fp.wav")
SWEP.Primary.RPM			= 625			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 30		-- Size of a clip
SWEP.Primary.DefaultClip		= 0		-- Bullets you start with
SWEP.Primary.KickUp			= 0.55	-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.35		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.06		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= false	-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "5.56x45mm"			-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
-- Pistol, buckshot, and slam always ricochet. 
--Use AirboatGun for a light metal peircing shotgun pellets
SWEP.SelectiveFire		= true
SWEP.OnlyBurstFire = true --No auto, only burst/single?

SWEP.Secondary.IronFOV			= 70		-- How much you 'zoom' in. Less is more! 	

SWEP.data 				= {}				--The starting firemode

SWEP.ViewModelBoneMods = {
	["L Hand"] = { scale = Vector(0.75, 0.75, 0.75), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
        ["R Hand"] = { scale = Vector(0.79, 0.79, 0.79), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}


SWEP.Primary.Damage		= 10	-- Base damage per bullet
SWEP.Primary.Spread		= .021	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .017 -- Ironsight accuracy, should be the same for shotgun

-- Enter iron sight info and bone mod info below
SWEP.data = {}
SWEP.data.ironsights = 0 --Enable Ironsights
SWEP.IronSightsPos = Vector(-2.396, -0.22, 0.62)
SWEP.IronSightsAng = Vector(0.209, 0, 0)
SWEP.IronSightsPos_M16A1_OPTIC = Vector(-2.375, -3.6, -0.22)
SWEP.IronSightsAng_M16A1_OPTIC = Vector(0, 0, 0)
SWEP.IronSightsPos_ACOG = Vector(-2.375, -4, -0.2)
SWEP.IronSightsAng_ACOG = Vector(0, 0.5, 0)
SWEP.RunSightsPos = Vector(4.762, -4.238, -0.717)
SWEP.RunSightsAng = Vector(-6.743, 46.284, 0)
SWEP.InspectPos = Vector(7.76, -2, 0.016)
SWEP.InspectAng = Vector(1, 37.277, 3.2)

SWEP.AttachmentExclusions = { ["ins2_br_supp"] = { "ins2_ub_laser" } }

SWEP.Offset = {
	Pos = {
		Up = -1.1,
		Right = 1.1,
		Forward = 4.295
	},
	Ang = {
		Up = -1.043,
		Right = 0,
		Forward = 180,
	},
	Scale = 1.0
} --Procedural world model animation, defaulted for CS:S purposes.

SWEP.VElements = {
	["scope_m16a1_optic"] = { type = "Model", model = "models/weapons/upgrades/a_optics_m16a1.mdl", bone = "A_Optic", rel = "", pos = Vector(-0.09, 0.238, -1.246), angle = Angle(90, 90, 0), size = Vector(1.299, 1.299, 1.299), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false },
        ["suppressor"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_suppressor_ins.mdl", bone = "A_Suppressor", rel = "", pos = Vector(-0.151, 0.23, 0), angle = Angle(0, 90, 0), size = Vector(0.8, 0.8, 0.8), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false },
        ["scope_acog"] = { type = "Model", model = "models/weapons/upgrades/a_optic_acog.mdl", bone = "A_Optic", rel = "", pos = Vector(-0.09, 0.898, -0.146), angle = Angle(90, 90, 0), size = Vector(0.9, 0.9, 0.9), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false },
	["foregrip"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_foregrip_ins.mdl", bone = "A_Foregrip", rel = "", pos = Vector(0, 0.05, -0.26), angle = Angle(0, -90, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false },
        ["laser_beam"] = { type = "Model", model = "models/tfa/lbeam.mdl", bone = "M203_Slide_Release", rel = "laser", pos = Vector(0.503, 0.05, -0.686), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false },
	["laser"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_laser_rail.mdl", bone = "M203_Slide_Release", rel = "", pos = Vector(-0.772, 7.921, 1.46), angle = Angle(0, -90, -90), size = Vector(0.6, 0.6, 0.6), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false }
}


SWEP.WElements = {
["ref"] = { type = "Model", model = SWEP.WorldModel, bone = "oof", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.9, 0.9, 0.9), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
["scope_acog"] = { type = "Model", model = "models/weapons/upgrades/w_acog.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-46.63, 1.164, 3.783), angle = Angle(0, 0, 180), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false },
["suppressor"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_suppressor_ins.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(33.919, 1.317, -4.558), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false },
["scope_m16a1_optic"] = { type = "Model", model = "models/weapons/upgrades/w_optics_m16a1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(2.46, 1.315, -1.129), angle = Angle(0, -90, 180), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false },
["laser"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_laser_rail.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(27.875, 1.606, -5.152), angle = Angle(0, 0, -90), size = Vector(0.6, 0.6, 0.6), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false },
["foregrip"] = { type = "Model", model = "models/weapons/tfa_ins2/upgrades/a_foregrip_ins.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(13.6, 1.276, -3.174), angle = Angle(180, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false }
}

SWEP.Sights_Mode = TFA.Enum.LOCOMOTION_LUA -- ANI = mdl, HYBRID = lua but continue idle, Lua = stop mdl animation
SWEP.Idle_Mode = TFA.Enum.IDLE_BOTH --TFA.Enum.IDLE_DISABLED = no idle, TFA.Enum.IDLE_LUA = lua idle, TFA.Enum.IDLE_ANI = mdl idle, TFA.Enum.IDLE_BOTH = TFA.Enum.IDLE_ANI + TFA.Enum.IDLE_LUA

SWEP.BlowbackEnabled = true --Enable Blowback?
SWEP.BlowbackVector = Vector(0,-1.5,0)
SWEP.Blowback_Only_Iron = true --Only do blowback on ironsights
SWEP.Blowback_PistolMode = false --Do we recover from blowback when empty?
SWEP.Blowback_Shell_Enabled = true --Shoot shells through blowback animations
SWEP.Blowback_Shell_Effect = "ShellEject"--Which shell effect to use
SWEP.LuaShellEject = true --Enable shell ejection through lua?
SWEP.LuaShellEjectDelay = 0 --The delay to actually eject things
SWEP.LuaShellEffect = "RifleShellEject" --The effect used for shell ejection; Defaults to that used for blowback
SWEP.LaserSightModAttachment = 1
SWEP.LaserSightModAttachmentWorld = 4

SWEP.Attachments = {
}


SWEP.Sprint_Mode = TFA.Enum.LOCOMOTION_ANI -- ANI = mdl, HYBRID = ani + lua, Lua = lua only
SWEP.MuzzleAttachmentSilenced = 3

SWEP.RTAttachment_ACOG = 2
SWEP.ScopeDistanceRange_ACOG = 111
SWEP.ScopeDistanceMin_ACOG = 111

SWEP.SprintAnimation = {
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "base_sprint", --Number for act, String/Number for sequence
		["is_idle"] = true
	}
}

SWEP.ForceDryFireOff = false --Disables dryfire.  Set to false to enable them.
SWEP.DisableIdleAnimations = false --Disables idle animations.  Set to false to enable them.
SWEP.ForceEmptyFireOff = true --Disables empty fire animations.  Set to false to enable them.