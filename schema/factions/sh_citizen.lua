
FACTION.name = "Citizen"
FACTION.description = "A regular human citizen enslaved by the Universal Union."
FACTION.color = Color(150, 125, 100, 255)
-- FACTION.pay = 5
FACTION.isDefault = false
FACTION.models = {
	"models/tnb/citizens/aphelion/male_01.mdl",
	"models/tnb/citizens/aphelion/male_02.mdl",
	"models/tnb/citizens/aphelion/male_03.mdl",
	"models/tnb/citizens/aphelion/male_04.mdl",
	"models/tnb/citizens/aphelion/male_05.mdl",
	"models/tnb/citizens/aphelion/male_06.mdl",
	"models/tnb/citizens/aphelion/male_07.mdl",
	"models/tnb/citizens/aphelion/male_09.mdl",
	"models/tnb/citizens/aphelion/male_16.mdl",
	"models/tnb/citizens/aphelion/female_01.mdl",
	"models/tnb/citizens/aphelion/female_02.mdl",
	"models/tnb/citizens/aphelion/female_03.mdl",
	"models/tnb/citizens/aphelion/female_04.mdl",
	"models/tnb/citizens/aphelion/female_05.mdl",
	"models/tnb/citizens/aphelion/female_08.mdl",
	"models/tnb/citizens/aphelion/female_09.mdl",
	"models/tnb/citizens/aphelion/female_10.mdl",
	"models/tnb/citizens/aphelion/female_11.mdl"
}

function FACTION:OnCharacterCreated(client, character)
	local inventory = character:GetInventory()

	inventory:Add("smg1", 1)
	inventory:Add("smg1ammo", 3)
	inventory:Add("pistol", 1)
	inventory:Add("pistolammo", 2)
	inventory:Add("grenade", 1)
	inventory:Add("walkietalkie", 1)
	inventory:Add("bandage", 3)
	inventory:Add("flashlight", 1)
end

FACTION_CITIZEN = FACTION.index