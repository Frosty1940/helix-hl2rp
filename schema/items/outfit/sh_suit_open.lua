ITEM.name = "남성 정장"
ITEM.description = "전쟁 전에 입었던 남성용 말끔한 정장입니다.\n재킷을 입고 있습니다."
-- ITEM.category = "Outfit"
ITEM.model = "models/props_c17/SuitCase_Passenger_Physics.mdl"
ITEM.skin = 0
ITEM.width = 1
ITEM.height = 1
ITEM.outfitCategory = "outfit"
ITEM.pacData = {}
ITEM.replacements = {
	{"tnb/citizens/aphelion", "suits"},
	{"male_01", "male_01_open"},
	{"male_02", "male_02_open"},
	{"male_03", "male_03_open"},
	{"male_04", "male_04_open"},
	{"male_05", "male_05_open"},
	{"male_06", "male_06_open"},
	{"male_07", "male_07_open"},
	{"male_08", "male_08_open"},
	{"male_09", "male_09_open"}
}

/*
-- This will change a player's skin after changing the model. Keep in mind it starts at 0.
ITEM.newSkin = 1
-- This will change a certain part of the model.
ITEM.replacements = {"group01", "group02"}
-- This will change the player's model completely.
ITEM.replacements = "models/manhack.mdl"
-- This will have multiple replacements.
ITEM.replacements = {
	{"male", "female"},
	{"group01", "group02"}
}

-- This will apply body groups.
ITEM.bodyGroups = {
	["blade"] = 1,
	["bladeblur"] = 1
}
*/