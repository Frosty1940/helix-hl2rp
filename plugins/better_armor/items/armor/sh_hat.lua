ITEM.name = "Field Cap"
ITEM.description = "hatDesc"
ITEM.model = "models/props_junk/cardboard_box004a.mdl"
ITEM.height = 1
ITEM.width = 1
ITEM.armorAmount = 0
ITEM.price = 20
ITEM.gasmask = false -- It will protect you from bad air
ITEM.resistance = false -- This will activate the protection bellow
ITEM.damage = { -- It is scaled; so 100 damage * 0.8 will makes the damage be 80.
			1, -- Bullets
			1, -- Slash
			1, -- Shock
			1, -- Burn
			1, -- Radiation
			1, -- Acid
			1, -- Explosion
}
ITEM.bodyGroups = {
	["helmet"] = 3
}
ITEM.outfitCategory = "head"
ITEM.noResetBodyGroups = true
ITEM.maxDurability = 30
ITEM.allowedModels = {
	"models/wichacks/erdimnovest.mdl",
	"models/wichacks/ericnovest.mdl",
	"models/wichacks/joenovest.mdl",
	"models/wichacks/mikenovest.mdl",
	"models/wichacks/sandronovest.mdl",
	"models/wichacks/tednovest.mdl",
	"models/wichacks/vannovest.mdl",
	"models/wichacks/vancenovest.mdl",
	"models/models/army/female_01.mdl",
	"models/models/army/female_02.mdl",
	"models/models/army/female_03.mdl",
	"models/models/army/female_04.mdl",
	"models/models/army/female_06.mdl",
	"models/models/army/female_07.mdl"
}

if (CLIENT) then
	function ITEM:PopulateTooltip(tooltip)
		local data = tooltip:AddRow("data")
		data:SetBackgroundColor(Color(85, 127, 242))
		data:SetText(L("securitizedItemTooltip"))
		data:SetExpensiveShadow(0.5)
		data:SizeToContents()
	end
end