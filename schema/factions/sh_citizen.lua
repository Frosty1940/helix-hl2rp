
FACTION.name = "Citizen"
FACTION.description = "A regular human citizen enslaved by the Universal Union."
FACTION.color = Color(53, 156, 56, 255)
FACTION.pay = 5
FACTION.isDefault = true
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
	local id = Schema:ZeroNumber(math.random(1, 99999), 5)
	local inventory = character:GetInventory()

	character:SetData("cid", id)

	inventory:Add("suitcase", 1)
	inventory:Add("cid", 1, {
		name = character:GetName(),
		id = id
	})

	--inventory:Add("smg1", 1)
	--inventory:Add("smg1ammo", 3)
	--inventory:Add("pistol", 1)
	--inventory:Add("pistolammo", 2)
	--inventory:Add("grenade", 1)
	--inventory:Add("walkietalkie", 1)
	--inventory:Add("bandage", 3)
	--inventory:Add("flashlight", 1)
end

FACTION_CITIZEN = FACTION.index