ITEM.name = "징집군 군복"
ITEM.description = "징집군에게 보급되는 올리브색 군복입니다."
-- ITEM.category = "Outfit"
ITEM.model = "models/props_c17/SuitCase_Passenger_Physics.mdl"
ITEM.skin = 0
ITEM.width = 1
ITEM.height = 1
ITEM.outfitCategory = "outfit"
ITEM.pacData = {}
ITEM.replacements = {
	{"tnb/citizens/aphelion/male_01", "wichacks/vannovest"},
	{"tnb/citizens/aphelion/male_02", "wichacks/tednovest"},
	{"tnb/citizens/aphelion/male_03", "wichacks/joenovest"},
	{"tnb/citizens/aphelion/male_04", "wichacks/ericnovest"},
	{"tnb/citizens/aphelion/male_05", "wichacks/artcnovest"},
	{"tnb/citizens/aphelion/male_06", "wichacks/sandrocnovest"},
	{"tnb/citizens/aphelion/male_07", "wichacks/mikenovest"},
	{"tnb/citizens/aphelion/male_09", "wichacks/erdimnovest"},
	{"tnb/citizens/aphelion/female_", "models/army/female_"}
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

if (CLIENT) then
	function ITEM:PopulateTooltip(tooltip)
		local data = tooltip:AddRow("data")
		data:SetBackgroundColor(Color(85, 127, 242))
		data:SetText(L("securitizedItemTooltip"))
		data:SetExpensiveShadow(0.5)
		data:SizeToContents()
	end
end