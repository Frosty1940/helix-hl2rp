ITEM.name = "Gasmask"
ITEM.description = "itemGasmaskDesc"
ITEM.model = "models/tnb/items/aphelion/gasmask.mdl"
ITEM.skin = 0
ITEM.width = 1
ITEM.height = 1
ITEM.price = 250
ITEM.outfitCategory = "head"
ITEM.noResetBodyGroups = true
ITEM.bodyGroups = {
	["headgear"] = 2
}
ITEM.allowedModels = {
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

ITEM:Hook("Equip", function(item)
	local client = item.player
	client:SetNetVar("gasmask", true)
end)

ITEM:Hook("EquipUn", function(item)
	local client = item.player
	client:SetNetVar("gasmask", false)
end)

if (CLIENT) then
	function ITEM:PopulateTooltip(tooltip)
		local data = tooltip:AddRow("data")
		data:SetBackgroundColor(Color(218, 24, 24))
		data:SetText(L("sociocidalItemTooltip"))
		data:SetExpensiveShadow(0.5)
		data:SizeToContents()
	end
end