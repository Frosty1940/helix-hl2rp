-- Variables that are used on both client and server
SWEP.Gun = ("ix_m16") -- must be the name of your swep but NO CAPITALS!
SWEP.Category				= "HL2 RP" --Category where you will find your weapons
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellAttachment			= "shell" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.Manufacturer = "Colt" --Gun Manufactrer (e.g. Hoeckler and Koch )
SWEP.Author				= "The Master MLG & Frosty"
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.PrintName				= "M16"		-- Weapon name (Shown on HUD)	
SWEP.Slot				= 2				-- Slot in the weapon selection menu
SWEP.SlotPos				= 3			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox		= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   	= false		-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- set false if you want no crosshair
SWEP.Weight					= 35		-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "ar2"		-- how others view you carrying the weapon
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive 
-- you're mostly going to use ar2, smg, shotgun or pistol. rpg makes for good sniper rifles

SWEP.ViewModelFOV			= 62
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/v_nam_m16a1.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_nam_m16a1.mdl"	-- Weapon world model
SWEP.Base				= "tfa_gun_base" --the Base this weapon will work on. PLEASE RENAME THE BASE! 
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false
SWEP.ShowWorldModel			= true
SWEP.UseHands = true

SWEP.Primary.Sound			= Sound("weapons/tfa_nam_m16a1_remake/m4a1_fp.wav")
SWEP.Primary.SilencedSound			= Sound("weapons/tfa_nam_m16a1_remake/m4a1_suppressed_fp.wav")
SWEP.Primary.GLSound = Sound("TFA_INS2_GP30.1")
SWEP.Primary.RPM			= 575			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 20		-- Size of a clip
SWEP.Primary.DefaultClip		= 0		-- Bullets you start with
SWEP.Primary.KickUp			= 0.28	-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.18		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.05		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= false	-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "5.56x45mm"			-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
-- Pistol, buckshot, and slam always ricochet. 
--Use AirboatGun for a light metal peircing shotgun pellets
SWEP.SelectiveFire		= true
SWEP.OnlyBurstFire = true --Only auto/single?

SWEP.Secondary.IronFOV			= 70		-- How much you 'zoom' in. Less is more! 	

SWEP.data 				= {}				--The starting firemode

SWEP.Primary.Damage		= 10	-- Base damage per bullet
SWEP.Primary.Spread		= .016	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .016 -- Ironsight accuracy, should be the same for shotguns

-- Enter iron sight info and bone mod info below
SWEP.data = {}
SWEP.data.ironsights = 0 --Enable Ironsights
SWEP.IronSightsPos = Vector(-1.349, 0, 0.2)
SWEP.IronSightsAng = Vector(0.14, 0, 0)
SWEP.IronSightsPos_GL = Vector(-1.299, -11.1, -0.1)
SWEP.IronSightsAng_GL = Vector(-1, -0.3, 0)
SWEP.IronSightsPos_M16A1_OPTIC = Vector(-1.35, -3.7, -0.45)
SWEP.IronSightsAng_M16A1_OPTIC = Vector(0.14, 0, 0)
SWEP.RunSightsPos = Vector(4.762, -4.238, -0.717)
SWEP.RunSightsAng = Vector(-6.743, 46.284, 0)
SWEP.InspectPos = Vector(7.76, -2, 0.016)
SWEP.InspectAng = Vector(1, 37.277, 3.2)

SWEP.Offset = {
	Pos = {
		Up = -1.1,
		Right = 0.8,
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
                        ["mag"] = { type = "Model", model = "models/weapons/upgrades/a_magazine_m16_20.mdl", bone = "Magazine", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = true },
                        ["mag_ext"] = { type = "Model", model = "models/weapons/upgrades/a_magazine_m16_30.mdl", bone = "Magazine", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
                        ["suppressor"] = { type = "Model", model = "models/weapons/upgrades/a_suppressor_m16.mdl", bone = "M16_HotBod", rel = "", pos = Vector(1.069, -8.662, 2.845), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false },
                        ["standard"] = { type = "Model", model = "models/weapons/upgrades/a_standard_m16a1.mdl", bone = "M16_HotBod", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = true },
                        ["scope_m16a1_optic"] = { type = "Model", model = "models/weapons/upgrades/a_optics_m16a1.mdl", bone = "A_Optic", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
                        ["gl"] = { type = "Model", model = "models/weapons/upgrades/a_m16a1_m203.mdl", bone = "M16_HotBod", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = true },
}

SWEP.ViewModelBoneMods = {
	["L Hand"] = { scale = Vector(0.78, 0.78, 0.78), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
        ["R Hand"] = { scale = Vector(0.79, 0.79, 0.79), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}

SWEP.WElements = {
	["ref"] = { type = "Model", model = SWEP.WorldModel, bone = "oof", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true },
                        ["mag"] = { type = "Model", model = "models/weapons/upgrades/w_magazine_m16_20.mdl", bone = "W_MAGAZINE", rel = "ref", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = true },
                        ["mag_ext"] = { type = "Model", model = "models/weapons/upgrades/w_magazine_m16_30.mdl", bone = "W_MAGAZINE", rel = "ref", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true, active = false },
                        ["standard"] = { type = "Model", model = "models/weapons/upgrades/w_standard_m16a1.mdl", bone = "ATTACH_Standard", rel = "ref", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, bonemerge = true },
                        ["suppressor"] = { type = "Model", model = "models/weapons/upgrades/a_suppressor_m16.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(9.019, 0.2, -2.53), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false }, 
                         ["gl"] = { type = "Model", model = "models/weapons/upgrades/w_m16a1_m203.mdl", bone = "ATTACH_Standard", rel = "ref", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = true },
                         ["scope_m16a1_optic"] = { type = "Model", model = "models/weapons/upgrades/w_optics_m16a1.mdl", bone = "R Hand", rel = "", pos = Vector(0, 0, 0), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false, bonemerge = true }          
}

SWEP.Sights_Mode = TFA.Enum.LOCOMOTION_HYBRID -- ANI = mdl, HYBRID = lua but continue idle, Lua = stop mdl animation
SWEP.Idle_Mode = TFA.Enum.IDLE_BOTH --TFA.Enum.IDLE_DISABLED = no idle, TFA.Enum.IDLE_LUA = lua idle, TFA.Enum.IDLE_ANI = mdl idle, TFA.Enum.IDLE_BOTH = TFA.Enum.IDLE_ANI + TFA.Enum.IDLE_LUA

SWEP.Blowback_Only_Iron = true --Only do blowback on ironsights
SWEP.Blowback_PistolMode = false --Do we recover from blowback when empty?
SWEP.Blowback_Shell_Enabled = true --Shoot shells through blowback animations
SWEP.Blowback_Shell_Effect = "ShellEject"--Which shell effect to use
SWEP.LuaShellEject = true --Enable shell ejection through lua?
SWEP.LuaShellEjectDelay = 0 --The delay to actually eject things
SWEP.LuaShellEffect = "RifleShellEject" --The effect used for shell ejection; Defaults to that used for blowback

SWEP.Attachments = {
}

SWEP.Sprint_Mode = TFA.Enum.LOCOMOTION_ANI -- ANI = mdl, HYBRID = ani + lua, Lua = lua only

SWEP.ScopeDistanceRange_M16A1_OPTIC = 75
SWEP.ScopeDistanceMin_M16A1_OPTIC = 25
SWEP.ScopeOverlayTransforms_M16A1_OPTIC = { 0, -0.166 }
SWEP.AttachmentExclusions = { ["tfa_nam_m16a1_m203"] = { "ins2_mag_ext_carbine_30rd" } }

SWEP.MuzzleAttachmentSilenced = 1

SWEP.SprintAnimation = {
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "base_sprint", --Number for act, String/Number for sequence
		["is_idle"] = true
	}
}